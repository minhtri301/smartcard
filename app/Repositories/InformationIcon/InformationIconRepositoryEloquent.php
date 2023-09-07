<?php

namespace App\Repositories\InformationIcon;

use Prettus\Repository\Eloquent\BaseRepository;
use Prettus\Repository\Criteria\RequestCriteria;
use App\Repositories\InformationIcon\InformationIconRepository;
use App\Models\Information_icon;
use App\Validators\InformationIcon\InformationIconValidator;

/**
 * Class InformationIconRepositoryEloquent.
 *
 * @package namespace App\Repositories\InformationIcon;
 */
class InformationIconRepositoryEloquent extends BaseRepository implements InformationIconRepository
{
    /**
     * Specify Model class name
     *
     * @return string
     */
    public function model()
    {
        return Information_icon::class;
    }

    

    /**
     * Boot up the repository, pushing criteria
     */
    public function boot()
    {
        $this->pushCriteria(app(RequestCriteria::class));
    }
    
}
