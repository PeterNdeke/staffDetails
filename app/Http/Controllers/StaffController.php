<?php

namespace App\Http\Controllers;

use App\Staff;
use Illuminate\Http\Request;
//use Input;
use Spatie\Searchable\Search;

class StaffController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $staff = Staff::orderBy('id', 'DESC')->paginate(10);
        //dd($staff);
        return view('staff.index', compact('staff'));
    }

    public function enable($id)
    {
        Staff::where('id', $id)->update([
            'status' => 'enable',
        ]);
        return back()->with([
            'flash_message' => 'Staff Enabled Successfully',
        ]);
    }

    public function disable($id)
    {
        Staff::where('id', $id)->update([
            'status' => 'disable',
        ]);
        return back()->with([
            'flash_message' => 'Staff Enabled Successfully',
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'first_name' => 'required',
            'last_name' => 'required',
            'position' => 'required',
            'email' => 'required',
        ]);

        $model = new Staff();
        $model->first_name = $request->first_name;
        $model->last_name = $request->last_name;
        $model->position = $request->position;
        $model->email = $request->email;
        $model->save();

        return redirect('/')->with([
            'flash_message' => 'Staff created Successfully',
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Staff  $staff
     * @return \Illuminate\Http\Response
     */
    public function show(Staff $staff)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Staff  $staff
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('staff.add');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Staff  $staff
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $staff = Staff::find($id);

        return view('staff.edit', compact('staff'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Staff  $staff
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        Staff::find($id)->update([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'email' => $request->email,
            'position' => $request->position,
        ]);

        return redirect('/')->with([
            'flash_message' => 'Staff Record Updated',
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Staff  $staff
     * @return \Illuminate\Http\Response
     */
    public function destroy(Staff $staff)
    {
        //
    }

    public function search(Request $request)
    {
        //  $query = $request->query;

        $query = $request->search;

        $searchResults = (new Search())
            ->registerModel(Staff::class, ['first_name', 'last_name', 'email', 'position'])
            ->perform($query);
        // dd($searchResults);

        return view('staff.search', compact('searchResults'));
    }
}
