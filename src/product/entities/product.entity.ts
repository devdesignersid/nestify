import { ObjectType, Field } from '@nestjs/graphql';

@ObjectType({ description: 'Product Entity' })
export class Product {
  @Field(() => String, { description: 'id of product' })
  id: string;

  @Field(() => String, { description: 'name of product' })
  name: string;
}
