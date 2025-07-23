<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class BookResource extends JsonResource
{
    /**
     * Transforma el recurso Book en una respuesta JSON estructurada.
     */
    public function toArray(Request $request): array
    {
        return [
            'id'          => $this->id,
            'title'       => $this->title,
            'description' => $this->description,
            'author'      => $this->author,
            'category'    => new CategoryResource($this->whenLoaded('category')),
        ];
    }
}
