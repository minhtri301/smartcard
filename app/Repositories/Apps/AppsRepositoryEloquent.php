<?php

namespace App\Repositories\Apps;

use App\Models\Apps;
use App\Validators\Apps\AppsValidator;
use App\Repositories\Apps\AppsRepository;
use Prettus\Repository\Eloquent\BaseRepository;
use Prettus\Repository\Criteria\RequestCriteria;

/**
 * Class AppsRepositoryEloquent.
 *
 * @package namespace App\Repositories\Apps;
 */
class AppsRepositoryEloquent extends BaseRepository implements AppsRepository
{
    /**
     * Specify Model class name
     *
     * @return string
     */
    public function model()
    {
        return Apps::class;
    }

    

    /**
     * Boot up the repository, pushing criteria
     */
    public function boot()
    {
        $this->pushCriteria(app(RequestCriteria::class));
    }
    
}
