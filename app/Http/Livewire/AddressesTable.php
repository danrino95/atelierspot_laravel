<?php

namespace App\Http\Livewire;

use App\Models\Addresses;
use Illuminate\Support\Carbon;
use Illuminate\Database\Eloquent\Builder;
use PowerComponents\LivewirePowerGrid\Rules\{Rule, RuleActions};
use PowerComponents\LivewirePowerGrid\Traits\ActionButton;
use PowerComponents\LivewirePowerGrid\{Button, Column, Exportable, Footer, Header, PowerGrid, PowerGridComponent, PowerGridEloquent};

final class AddressesTable extends PowerGridComponent
{
    use ActionButton;

    /*
    |--------------------------------------------------------------------------
    |  Features Setup
    |--------------------------------------------------------------------------
    | Setup Table's general features
    |
    */
    public function setUp(): array
    {
        $this->showCheckBox();

        return [
            Exportable::make('export')
                ->striped()
                ->type(Exportable::TYPE_XLS, Exportable::TYPE_CSV),
            Header::make()->showSearchInput(),
            Footer::make()
                ->showPerPage()
                ->showRecordCount(),
        ];
    }

    /*
    |--------------------------------------------------------------------------
    |  Datasource
    |--------------------------------------------------------------------------
    | Provides data to your Table using a Model or Collection
    |
    */

    /**
    * PowerGrid datasource.
    *
    * @return Builder<\App\Models\Addresses>
    */
    public function datasource(): Builder
    {
        return Addresses::query();
    }

    /*
    |--------------------------------------------------------------------------
    |  Relationship Search
    |--------------------------------------------------------------------------
    | Configure here relationships to be used by the Search and Table Filters.
    |
    */

    /**
     * Relationship search.
     *
     * @return array<string, array<int, string>>
     */
    public function relationSearch(): array
    {
        return [];
    }

    /*
    |--------------------------------------------------------------------------
    |  Add Column
    |--------------------------------------------------------------------------
    | Make Datasource fields available to be used as columns.
    | You can pass a closure to transform/modify the data.
    |
    | ❗ IMPORTANT: When using closures, you must escape any value coming from
    |    the database using the `e()` Laravel Helper function.
    |
    */
    public function addColumns(): PowerGridEloquent
    {
        return PowerGrid::eloquent()
            ->addColumn('address_id')
            ->addColumn('address_line_1')
            ->addColumn('address_line_2')
            ->addColumn('address_city')
            ->addColumn('address_district')
            ->addColumn('address_state')
            ->addColumn('address_country')
            ->addColumn('address_pincode')

           /** Example of custom column using a closure **/
            ->addColumn('address_pincode_lower', function (Addresses $model) {
                return strtolower(e($model->address_pincode));
            })

            ->addColumn('address_type_id');
    }

    /*
    |--------------------------------------------------------------------------
    |  Include Columns
    |--------------------------------------------------------------------------
    | Include the columns added columns, making them visible on the Table.
    | Each column can be configured with properties, filters, actions...
    |
    */

     /**
     * PowerGrid Columns.
     *
     * @return array<int, Column>
     */
    public function columns(): array
    {
        return [
            Column::make('ADDRESS ID', 'address_id')
                ->makeInputRange(),

            Column::make('ADDRESS LINE 1', 'address_line_1')
                ->sortable()
                ->searchable(),

            Column::make('ADDRESS LINE 2', 'address_line_2')
                ->sortable()
                ->searchable(),

            Column::make('ADDRESS CITY', 'address_city')
                ->sortable()
                ->searchable(),

            Column::make('ADDRESS DISTRICT', 'address_district')
                ->sortable()
                ->searchable(),

            Column::make('ADDRESS STATE', 'address_state')
                ->sortable()
                ->searchable(),

            Column::make('ADDRESS COUNTRY', 'address_country')
                ->sortable()
                ->searchable(),

            Column::make('ADDRESS PINCODE', 'address_pincode')
                ->sortable()
                ->searchable()
                ->makeInputText(),

            Column::make('ADDRESS TYPE ID', 'address_type_id')
                ->makeInputRange(),

        ]
;
    }

    /*
    |--------------------------------------------------------------------------
    | Actions Method
    |--------------------------------------------------------------------------
    | Enable the method below only if the Routes below are defined in your app.
    |
    */

     /**
     * PowerGrid Addresses Action Buttons.
     *
     * @return array<int, Button>
     */

    /*
    public function actions(): array
    {
       return [
           Button::make('edit', 'Edit')
               ->class('bg-indigo-500 cursor-pointer text-white px-3 py-2.5 m-1 rounded text-sm')
               ->route('addresses.edit', ['addresses' => 'id']),

           Button::make('destroy', 'Delete')
               ->class('bg-red-500 cursor-pointer text-white px-3 py-2 m-1 rounded text-sm')
               ->route('addresses.destroy', ['addresses' => 'id'])
               ->method('delete')
        ];
    }
    */

    /*
    |--------------------------------------------------------------------------
    | Actions Rules
    |--------------------------------------------------------------------------
    | Enable the method below to configure Rules for your Table and Action Buttons.
    |
    */

     /**
     * PowerGrid Addresses Action Rules.
     *
     * @return array<int, RuleActions>
     */

    /*
    public function actionRules(): array
    {
       return [

           //Hide button edit for ID 1
            Rule::button('edit')
                ->when(fn($addresses) => $addresses->id === 1)
                ->hide(),
        ];
    }
    */
}
