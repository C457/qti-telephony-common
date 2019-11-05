.class public Lcom/dts/dtssdk/a/b;
.super Lcom/dts/dtssdk/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtssdk/a/b$c;,
        Lcom/dts/dtssdk/a/b$d;,
        Lcom/dts/dtssdk/a/b$e;,
        Lcom/dts/dtssdk/a/b$f;,
        Lcom/dts/dtssdk/a/b$g;,
        Lcom/dts/dtssdk/a/b$b;,
        Lcom/dts/dtssdk/a/b$h;,
        Lcom/dts/dtssdk/a/b$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Lcom/dts/dtssdk/a/b$b;

.field private e:Lcom/dts/dtssdk/a/b$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/dts/dtssdk/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/a/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/dts/dtssdk/a/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "offline_database.db"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/dts/dtssdk/a/k;-><init>(Landroid/content/Context;Ljava/lang/String;B)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Landroid/database/Cursor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtssdk/a/a/b;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    new-instance v4, Lcom/dts/dtssdk/a/m;

    invoke-direct {v4}, Lcom/dts/dtssdk/a/m;-><init>()V

    const-string v1, "Brand"

    const-string v3, "Id"

    invoke-virtual {v4, v1, v3}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v1

    const-string v3, "Brand"

    const-string v5, "Uuid"

    invoke-virtual {v1, v3, v5}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v1

    const-string v3, "Brand"

    const-string v5, "Name"

    invoke-virtual {v1, v3, v5}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v1, "Brand"

    invoke-virtual {v4, v1}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    move v3, v0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/dts/dtssdk/a/i;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    check-cast v0, Lcom/dts/dtssdk/a/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Brand.Id = "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/dts/dtssdk/a/i;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/dts/dtssdk/a/m;->d(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/dts/dtssdk/a/a/a;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    check-cast v0, Lcom/dts/dtssdk/a/a/a;

    iget v6, v0, Lcom/dts/dtssdk/a/a/a;->a:I

    sget v7, Lcom/dts/dtssdk/a/a/a$a;->a:I

    if-ne v6, v7, :cond_2

    const-string v1, "Brand.Name LIKE ?"

    iget-object v0, v0, Lcom/dts/dtssdk/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Lcom/dts/dtssdk/a/m;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move v1, v2

    goto :goto_0

    :cond_2
    iget v6, v0, Lcom/dts/dtssdk/a/a/a;->a:I

    sget v7, Lcom/dts/dtssdk/a/a/a$a;->b:I

    if-ne v6, v7, :cond_6

    const-string v1, "Brand.Uuid LIKE ?"

    iget-object v0, v0, Lcom/dts/dtssdk/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Lcom/dts/dtssdk/a/m;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/dts/dtssdk/util/a;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    check-cast v0, Lcom/dts/dtssdk/util/a;

    invoke-direct {p0, p1}, Lcom/dts/dtssdk/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "EXISTS (SELECT Product.BrandId FROM Product, ProductAudioRoute, AudioRouteEnum WHERE ProductAudioRoute.AudioRouteEnumId="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/dts/dtssdk/a/b;->d:Lcom/dts/dtssdk/a/b$b;

    invoke-static {v0}, Lcom/dts/dtssdk/a/b;->b(Lcom/dts/dtssdk/util/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/dts/dtssdk/a/b$b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND ProductAudioRoute.ProductId = Product.Id AND Product.BrandId = Brand.Id)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/dts/dtssdk/a/m;->c(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move v0, v2

    :goto_1
    move v3, v0

    goto/16 :goto_0

    :cond_4
    if-nez v3, :cond_5

    if-nez v1, :cond_5

    const-string v0, "EXISTS (SELECT Product.BrandId FROM Product WHERE Product.BrandId = Brand.Id)"

    invoke-virtual {v4, v0}, Lcom/dts/dtssdk/a/m;->d(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    :cond_5
    const-string v0, "EXISTS (SELECT DeviceBrand.BrandId FROM DeviceBrand WHERE DeviceBrand.BrandId=Brand.Id)"

    invoke-virtual {v4, v0}, Lcom/dts/dtssdk/a/m;->f(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Brand.Name ASC"

    iput-object v0, v4, Lcom/dts/dtssdk/a/m;->d:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/dts/dtssdk/a/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/dts/dtssdk/a/m;->b()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_6
    move v0, v3

    goto :goto_1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;I)Landroid/database/Cursor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtssdk/a/a/b;",
            ">;I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v7, Lcom/dts/dtssdk/a/m;

    invoke-direct {v7}, Lcom/dts/dtssdk/a/m;-><init>()V

    sget v0, Lcom/dts/dtssdk/a/b$a;->a:I

    if-eq p3, v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Product"

    const-string v4, "Id"

    invoke-virtual {v7, v3, v4}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v3

    const-string v4, "Product"

    const-string v5, "Uuid"

    invoke-virtual {v3, v4, v5}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v3

    const-string v4, "Product"

    const-string v5, "BrandId"

    invoke-virtual {v3, v4, v5}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v3

    const-string v4, "Product"

    const-string v5, "Name"

    invoke-virtual {v3, v4, v5}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v3

    const-string v4, "Product"

    const-string v5, "Description"

    invoke-virtual {v3, v4, v5}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v3

    const-string v4, "Product"

    const-string v5, "Type"

    invoke-virtual {v3, v4, v5}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v3

    const-string v4, "Product"

    const-string v5, "SubType"

    invoke-virtual {v3, v4, v5}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v3

    const-string v4, "Product"

    const-string v5, "ReleaseDate"

    invoke-virtual {v3, v4, v5}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v3

    const-string v4, "Product"

    const-string v5, "NoiseCancelingSupport"

    invoke-virtual {v3, v4, v5}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v0

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/dts/dtssdk/a/i;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    check-cast v0, Lcom/dts/dtssdk/a/i;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Product.BrandId = "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/dts/dtssdk/a/i;->a:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->d(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    if-nez v4, :cond_19

    move v0, v2

    :goto_2
    move v5, v1

    move v6, v0

    goto :goto_1

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/dts/dtssdk/a/a/a;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    check-cast v0, Lcom/dts/dtssdk/a/a/a;

    iget v9, v0, Lcom/dts/dtssdk/a/a/a;->a:I

    sget v10, Lcom/dts/dtssdk/a/a/a$a;->a:I

    if-ne v9, v10, :cond_3

    const-string v4, "Product.BrandId = Brand.Id AND Brand.Name LIKE ?"

    iget-object v0, v0, Lcom/dts/dtssdk/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {v7, v4, v0}, Lcom/dts/dtssdk/a/m;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move v4, v1

    move v5, v1

    move v6, v1

    goto :goto_1

    :cond_3
    iget v9, v0, Lcom/dts/dtssdk/a/a/a;->a:I

    sget v10, Lcom/dts/dtssdk/a/a/a$a;->b:I

    if-ne v9, v10, :cond_4

    const-string v4, "Product.BrandId = Brand.Id AND Brand.Uuid LIKE ?"

    iget-object v0, v0, Lcom/dts/dtssdk/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {v7, v4, v0}, Lcom/dts/dtssdk/a/m;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move v4, v1

    move v5, v1

    move v6, v1

    goto :goto_1

    :cond_4
    iget v9, v0, Lcom/dts/dtssdk/a/a/a;->a:I

    sget v10, Lcom/dts/dtssdk/a/a/a$a;->c:I

    if-ne v9, v10, :cond_6

    const-string v9, "Product.Uuid LIKE ?"

    iget-object v0, v0, Lcom/dts/dtssdk/a/a/a;->b:Ljava/lang/String;

    if-nez v0, :cond_5

    sget-object v0, Lcom/dts/dtssdk/a/m;->a:Ljava/lang/String;

    const-string v9, "Cannot add null selection args. Aborting"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v10, v7, Lcom/dts/dtssdk/a/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v7, Lcom/dts/dtssdk/a/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    iget v0, v0, Lcom/dts/dtssdk/a/a/a;->a:I

    sget v9, Lcom/dts/dtssdk/a/a/a$a;->d:I

    if-ne v0, v9, :cond_0

    const-string v0, "Product.Type LIKE \'DeviceTuning\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/dts/dtssdk/a/a$a;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    check-cast v0, Lcom/dts/dtssdk/a/a$a;

    sget-object v9, Lcom/dts/dtssdk/a/a$a;->c:Lcom/dts/dtssdk/a/a$a;

    if-ne v0, v9, :cond_8

    const-string v0, "Product.SubType LIKE \'Ear-buds\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'In-Ear\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'Ear_buds\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'Ear buds\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'Earbuds\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'In_Ear\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'In Ear\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'InEar\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    goto/16 :goto_1

    :cond_8
    sget-object v9, Lcom/dts/dtssdk/a/a$a;->b:Lcom/dts/dtssdk/a/a$a;

    if-ne v0, v9, :cond_9

    const-string v0, "Product.SubType LIKE \'On-Ear\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'Over-Ear\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'On_Ear\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'On Ear\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'OnEar\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'Over_Ear\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'Over Ear\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'OverEar\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    goto/16 :goto_1

    :cond_9
    sget-object v9, Lcom/dts/dtssdk/a/a$a;->d:Lcom/dts/dtssdk/a/a$a;

    if-ne v0, v9, :cond_a

    const-string v0, "Product.SubType LIKE \'Ear-piece\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'Ear_piece\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'Ear piece\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'Earpiece\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    goto/16 :goto_1

    :cond_a
    sget-object v9, Lcom/dts/dtssdk/a/a$a;->e:Lcom/dts/dtssdk/a/a$a;

    if-ne v0, v9, :cond_0

    const-string v0, "Product.SubType LIKE \'Car-Audio\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'Car_Audio\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'Car Audio\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.SubType LIKE \'CarAudio\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/dts/dtssdk/util/a;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    check-cast v0, Lcom/dts/dtssdk/util/a;

    invoke-direct {p0, p1}, Lcom/dts/dtssdk/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "ProductAudioRoute.AudioRouteEnumId="

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/dts/dtssdk/a/b;->d:Lcom/dts/dtssdk/a/b$b;

    invoke-static {v0}, Lcom/dts/dtssdk/a/b;->b(Lcom/dts/dtssdk/util/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/dts/dtssdk/a/b$b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND ProductAudioRoute.ProductId = Product.Id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->c(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move v3, v1

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/dts/dtssdk/util/d;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    check-cast v0, Lcom/dts/dtssdk/util/d;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SubType LIKE \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/dts/dtssdk/a/b$1;->c:[I

    invoke-virtual {v0}, Lcom/dts/dtssdk/util/d;->ordinal()I

    move-result v0

    aget v0, v10, v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "Default"

    :goto_3
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\' COLLATE NOCASE"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->e(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    goto/16 :goto_1

    :pswitch_0
    const-string v0, "Attached0"

    goto :goto_3

    :pswitch_1
    const-string v0, "Attached1"

    goto :goto_3

    :pswitch_2
    const-string v0, "Attached2"

    goto :goto_3

    :pswitch_3
    const-string v0, "Attached3"

    goto :goto_3

    :pswitch_4
    const-string v0, "Attached4"

    goto :goto_3

    :pswitch_5
    const-string v0, "Attached5"

    goto :goto_3

    :pswitch_6
    const-string v0, "Attached6"

    goto :goto_3

    :pswitch_7
    const-string v0, "Attached7"

    goto :goto_3

    :pswitch_8
    const-string v0, "Attached8"

    goto :goto_3

    :cond_d
    if-eqz v6, :cond_12

    const-string v0, "Brand"

    const-string v1, "Uuid"

    invoke-virtual {v7, v0, v1}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v0

    const-string v1, "Brand"

    const-string v2, "Name"

    invoke-virtual {v0, v1, v2}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    if-eqz v5, :cond_11

    const-string v0, "Product LEFT JOIN DeviceFeaturedProduct ON Product.Id = DeviceFeaturedProduct.ProductId"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Brand"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Product.BrandId = Brand.Id"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->f(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    :goto_4
    new-instance v0, Lcom/dts/dtssdk/a/b$f;

    invoke-direct {v0, p0}, Lcom/dts/dtssdk/a/b$f;-><init>(Lcom/dts/dtssdk/a/b;)V

    const-string v0, "DeviceFeaturedProduct"

    const-string v1, "ListOrder"

    invoke-virtual {v7, v0, v1}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    if-eqz v3, :cond_e

    const-string v0, "ProductAudioRoute"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    :cond_e
    sget v0, Lcom/dts/dtssdk/a/b$a;->a:I

    if-ne p3, v0, :cond_13

    const-string v0, "Product.Type LIKE \'Standard\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->f(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    :cond_f
    :goto_5
    sget v0, Lcom/dts/dtssdk/a/b$a;->c:I

    if-ne p3, v0, :cond_18

    const-string v0, "ListOrder ASC"

    iput-object v0, v7, Lcom/dts/dtssdk/a/m;->d:Ljava/lang/String;

    :cond_10
    :goto_6
    invoke-virtual {v7}, Lcom/dts/dtssdk/a/m;->b()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/dts/dtssdk/a/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_11
    const-string v0, "Product LEFT JOIN Brand ON Product.BrandId = Brand.Id LEFT JOIN DeviceFeaturedProduct ON Product.Id = DeviceFeaturedProduct.ProductId"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    goto :goto_4

    :cond_12
    const-string v0, "Product LEFT JOIN DeviceFeaturedProduct ON Product.Id = DeviceFeaturedProduct.ProductId"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    goto :goto_4

    :cond_13
    sget v0, Lcom/dts/dtssdk/a/b$a;->b:I

    if-ne p3, v0, :cond_14

    const-string v0, "Product.Type LIKE \'Headphone\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->f(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    goto :goto_5

    :cond_14
    sget v0, Lcom/dts/dtssdk/a/b$a;->c:I

    if-ne p3, v0, :cond_15

    const-string v0, "Product.Type LIKE \'Headphone\' COLLATE NOCASE AND DeviceFeaturedProduct.ProductId = Product.Id"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->f(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    goto :goto_5

    :cond_15
    sget v0, Lcom/dts/dtssdk/a/b$a;->e:I

    if-ne p3, v0, :cond_16

    const-string v0, "Device"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v0, "Device.InboxUuid = Product.Uuid"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->f(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    goto :goto_5

    :cond_16
    sget v0, Lcom/dts/dtssdk/a/b$a;->f:I

    if-ne p3, v0, :cond_17

    const-string v0, "Product.Type LIKE \'DeviceHeadphone\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->f(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    goto :goto_5

    :cond_17
    sget v0, Lcom/dts/dtssdk/a/b$a;->g:I

    if-ne p3, v0, :cond_f

    const-string v0, "Product.Type LIKE \'DeviceTuning\' COLLATE NOCASE"

    invoke-virtual {v7, v0}, Lcom/dts/dtssdk/a/m;->f(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    goto :goto_5

    :cond_18
    sget v0, Lcom/dts/dtssdk/a/b$a;->b:I

    if-ne p3, v0, :cond_10

    const-string v0, "Product.Name ASC"

    iput-object v0, v7, Lcom/dts/dtssdk/a/m;->d:Ljava/lang/String;

    goto :goto_6

    :cond_19
    move v0, v6

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "offline_database.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/dts/dtssdk/a/b;->d:Lcom/dts/dtssdk/a/b$b;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/dts/dtssdk/a/m;

    invoke-direct {v0}, Lcom/dts/dtssdk/a/m;-><init>()V

    const-string v1, "AudioRouteEnum"

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v1

    const-string v2, "Id"

    invoke-virtual {v1, v2}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v1

    const-string v2, "Value"

    invoke-virtual {v1, v2}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/m;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v4

    move v2, v4

    move v3, v4

    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Id"

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v6, "Value"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Line-Out"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Assigning AudioRoute: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " to ID: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v8, v2

    move v2, v1

    move v1, v8

    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move v3, v2

    move v2, v1

    goto :goto_1

    :cond_1
    const-string v7, "Bluetooth"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Assigning AudioRoute: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " to ID: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_2

    :cond_2
    const-string v7, "USB"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Assigning AudioRoute: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " to ID: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_2

    :cond_3
    if-ne v3, v4, :cond_4

    sget-object v1, Lcom/dts/dtssdk/a/b;->c:Ljava/lang/String;

    const-string v6, "Database doesn\'t have audio route for lineout!"

    invoke-static {v1, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-ne v2, v4, :cond_5

    sget-object v1, Lcom/dts/dtssdk/a/b;->c:Ljava/lang/String;

    const-string v6, "Database doesn\'t have audio route for bluetooth!"

    invoke-static {v1, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-ne v0, v4, :cond_6

    sget-object v1, Lcom/dts/dtssdk/a/b;->c:Ljava/lang/String;

    const-string v4, "Database doesn\'t have audio route for usb!"

    invoke-static {v1, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v1, Lcom/dts/dtssdk/a/b$b;

    invoke-direct {v1, p0, v3, v2, v0}, Lcom/dts/dtssdk/a/b$b;-><init>(Lcom/dts/dtssdk/a/b;III)V

    iput-object v1, p0, Lcom/dts/dtssdk/a/b;->d:Lcom/dts/dtssdk/a/b$b;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_7
    move v1, v2

    move v2, v3

    goto :goto_2
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dts/dtssdk/a/l;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/dts/dtssdk/a/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "content_mode.csv"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/dts/dtssdk/a/b$g;

    invoke-direct {v2, p0}, Lcom/dts/dtssdk/a/b$g;-><init>(Lcom/dts/dtssdk/a/b;)V

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/dts/dtssdk/a/b$g;->j:I

    const/4 v3, 0x1

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/dts/dtssdk/a/b$g;->a:Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/dts/dtssdk/a/b$g;->c:Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/dts/dtssdk/a/b$g;->d:Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/dts/dtssdk/a/b$g;->g:J

    const/4 v3, 0x5

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/dts/dtssdk/a/b$g;->f:Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/dts/dtssdk/a/b$g;->h:I

    new-instance v0, Lcom/dts/dtssdk/a/l;

    invoke-direct {v0, v2}, Lcom/dts/dtssdk/a/l;-><init>(Lcom/dts/dtssdk/a/b$g;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v2, Lcom/dts/dtssdk/a/b;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v1, Lcom/dts/dtssdk/a/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v0

    sget-object v1, Lcom/dts/dtssdk/a/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    sget-object v2, Lcom/dts/dtssdk/a/b;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dts/dtssdk/a/l;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dts/dtssdk/a/l;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/l;

    iget-object v2, v0, Lcom/dts/dtssdk/a/l;->c:Ljava/lang/String;

    const-string v3, "Attached1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dts/dtssdk/a/l;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dts/dtssdk/a/l;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/l;

    iget-object v2, v0, Lcom/dts/dtssdk/a/l;->a:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(Lcom/dts/dtssdk/util/a;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dts/dtssdk/a/b$1;->b:[I

    invoke-virtual {p0}, Lcom/dts/dtssdk/util/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Internal-Speakers"

    goto :goto_0

    :pswitch_1
    const-string v0, "Bluetooth"

    goto :goto_0

    :pswitch_2
    const-string v0, "Line-Out"

    goto :goto_0

    :pswitch_3
    const-string v0, "USB"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dts/dtssdk/a/l;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dts/dtssdk/a/l;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/l;

    iget-object v1, v0, Lcom/dts/dtssdk/a/l;->c:Ljava/lang/String;

    const-string v3, "Attached0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/dts/dtssdk/a/l;->c:Ljava/lang/String;

    const-string v3, "Attached2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/dts/dtssdk/a/l;->c:Ljava/lang/String;

    const-string v3, "Attached3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/dts/dtssdk/a/l;->c:Ljava/lang/String;

    const-string v3, "Attached4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/dts/dtssdk/a/l;->c:Ljava/lang/String;

    const-string v3, "Attached5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/dts/dtssdk/a/l;->c:Ljava/lang/String;

    const-string v3, "Attached6"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/dts/dtssdk/a/l;->c:Ljava/lang/String;

    const-string v3, "Attached7"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/dts/dtssdk/a/l;->c:Ljava/lang/String;

    const-string v3, "Attached8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/dts/dtssdk/a/b;->e:Lcom/dts/dtssdk/a/b$e;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/dts/dtssdk/a/m;

    invoke-direct {v1}, Lcom/dts/dtssdk/a/m;-><init>()V

    const-string v2, "Device"

    invoke-virtual {v1, v2}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    invoke-virtual {v1}, Lcom/dts/dtssdk/a/m;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Lcom/dts/dtssdk/a/b;->c:Ljava/lang/String;

    const-string v1, "Device entry not found in Device table! Could not build cache"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v2, v0, :cond_2

    sget-object v2, Lcom/dts/dtssdk/a/b;->c:Ljava/lang/String;

    const-string v3, "More than one device entry found in Device table! Ignoring all except last entry"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/dts/dtssdk/a/b$e;

    invoke-direct {v2, p0}, Lcom/dts/dtssdk/a/b$e;-><init>(Lcom/dts/dtssdk/a/b;)V

    iput-object v2, p0, Lcom/dts/dtssdk/a/b;->e:Lcom/dts/dtssdk/a/b$e;

    iget-object v2, p0, Lcom/dts/dtssdk/a/b;->e:Lcom/dts/dtssdk/a/b$e;

    const-string v3, "Id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/dts/dtssdk/a/b$e;->j:I

    iget-object v2, p0, Lcom/dts/dtssdk/a/b;->e:Lcom/dts/dtssdk/a/b$e;

    const-string v3, "Uuid"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/dts/dtssdk/a/b$e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dts/dtssdk/a/b;->e:Lcom/dts/dtssdk/a/b$e;

    const-string v3, "Name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/dts/dtssdk/a/b$e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dts/dtssdk/a/b;->e:Lcom/dts/dtssdk/a/b$e;

    const-string v3, "ParentBrandId"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/dts/dtssdk/a/b$e;->c:I

    iget-object v2, p0, Lcom/dts/dtssdk/a/b;->e:Lcom/dts/dtssdk/a/b$e;

    const-string v3, "InboxUuid"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/dts/dtssdk/a/b$e;->d:Ljava/lang/String;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Standard"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static e(Ljava/lang/String;)Lcom/dts/dtssdk/a/a$a;
    .locals 2

    const-string v0, "In-Ear"

    invoke-static {p0}, Lcom/dts/dtssdk/a/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/a/a$a;->c:Lcom/dts/dtssdk/a/a$a;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Ear-buds"

    invoke-static {p0}, Lcom/dts/dtssdk/a/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/dts/dtssdk/a/a$a;->c:Lcom/dts/dtssdk/a/a$a;

    goto :goto_0

    :cond_1
    const-string v0, "Over-Ear"

    invoke-static {p0}, Lcom/dts/dtssdk/a/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/dts/dtssdk/a/a$a;->b:Lcom/dts/dtssdk/a/a$a;

    goto :goto_0

    :cond_2
    const-string v0, "On-Ear"

    invoke-static {p0}, Lcom/dts/dtssdk/a/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/dts/dtssdk/a/a$a;->b:Lcom/dts/dtssdk/a/a$a;

    goto :goto_0

    :cond_3
    const-string v0, "Ear-piece"

    invoke-static {p0}, Lcom/dts/dtssdk/a/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/dts/dtssdk/a/a$a;->d:Lcom/dts/dtssdk/a/a$a;

    goto :goto_0

    :cond_4
    const-string v0, "Car-Audio"

    invoke-static {p0}, Lcom/dts/dtssdk/a/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/dts/dtssdk/a/a$a;->e:Lcom/dts/dtssdk/a/a$a;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/dts/dtssdk/a/a$a;->a:Lcom/dts/dtssdk/a/a$a;

    goto :goto_0
.end method

.method static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    const-string v0, "Standard"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Standard"

    goto :goto_0

    :cond_1
    const-string v0, "Headphone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Headphone"

    goto :goto_0

    :cond_2
    const-string v0, "McRoom"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "McRoom"

    goto :goto_0

    :cond_3
    const-string v0, "Other"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Other"

    goto :goto_0

    :cond_4
    const-string v0, "StereoRoom"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "StereoRoom"

    goto :goto_0

    :cond_5
    const-string v0, "DeviceHeadphone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "DeviceHeadphone"

    goto :goto_0

    :cond_6
    const-string v0, "DeviceTuning"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "DeviceTuning"

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/dts/dtssdk/a/b;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not normalize product type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Unrecognized format"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "In-Ear"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "In-Ear"

    goto :goto_0

    :cond_2
    const-string v0, "In_Ear"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "In-Ear"

    goto :goto_0

    :cond_3
    const-string v0, "In Ear"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "In-Ear"

    goto :goto_0

    :cond_4
    const-string v0, "InEar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "In-Ear"

    goto :goto_0

    :cond_5
    const-string v0, "Over-Ear"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "Over-Ear"

    goto :goto_0

    :cond_6
    const-string v0, "Over_Ear"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "Over-Ear"

    goto :goto_0

    :cond_7
    const-string v0, "Over Ear"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "Over-Ear"

    goto :goto_0

    :cond_8
    const-string v0, "OverEar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "Over-Ear"

    goto :goto_0

    :cond_9
    const-string v0, "On-Ear"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "On-Ear"

    goto :goto_0

    :cond_a
    const-string v0, "On_Ear"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "On-Ear"

    goto :goto_0

    :cond_b
    const-string v0, "On Ear"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "On-Ear"

    goto :goto_0

    :cond_c
    const-string v0, "OnEar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "On-Ear"

    goto/16 :goto_0

    :cond_d
    const-string v0, "Ear-buds"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "Ear-buds"

    goto/16 :goto_0

    :cond_e
    const-string v0, "Ear_buds"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "Ear-buds"

    goto/16 :goto_0

    :cond_f
    const-string v0, "Ear buds"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "Ear-buds"

    goto/16 :goto_0

    :cond_10
    const-string v0, "Earbuds"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "Ear-buds"

    goto/16 :goto_0

    :cond_11
    const-string v0, "Ear-piece"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "Ear-piece"

    goto/16 :goto_0

    :cond_12
    const-string v0, "Ear_piece"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p0, "Ear-piece"

    goto/16 :goto_0

    :cond_13
    const-string v0, "Ear piece"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p0, "Ear-piece"

    goto/16 :goto_0

    :cond_14
    const-string v0, "Earpiece"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p0, "Ear-piece"

    goto/16 :goto_0

    :cond_15
    const-string v0, "Car-Audio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "Car-Audio"

    goto/16 :goto_0

    :cond_16
    const-string v0, "Car_Audio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p0, "Car-Audio"

    goto/16 :goto_0

    :cond_17
    const-string v0, "Car Audio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p0, "Car-Audio"

    goto/16 :goto_0

    :cond_18
    const-string v0, "CarAudio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p0, "Car-Audio"

    goto/16 :goto_0

    :cond_19
    const-string v0, "Attached0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "Attached0"

    goto/16 :goto_0

    :cond_1a
    const-string v0, "Attached1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p0, "Attached1"

    goto/16 :goto_0

    :cond_1b
    const-string v0, "Attached3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "Attached3"

    goto/16 :goto_0

    :cond_1c
    const-string v0, "Attached4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string p0, "Attached4"

    goto/16 :goto_0

    :cond_1d
    const-string v0, "Attached5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p0, "Attached5"

    goto/16 :goto_0

    :cond_1e
    const-string v0, "Attached6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string p0, "Attached6"

    goto/16 :goto_0

    :cond_1f
    const-string v0, "Attached7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string p0, "Attached7"

    goto/16 :goto_0

    :cond_20
    const-string v0, "Attached8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "Attached8"

    goto/16 :goto_0

    :cond_21
    const-string v0, "StereoRoom0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string p0, "StereoRoom0"

    goto/16 :goto_0

    :cond_22
    const-string v0, "StereoRoom1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "StereoRoom1"

    goto/16 :goto_0
.end method


# virtual methods
.method final a(Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/a/a;
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    sget v2, Lcom/dts/dtssdk/a/b$a;->e:I

    invoke-virtual {p0, v0, v2}, Lcom/dts/dtssdk/a/b;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    sget-object v1, Lcom/dts/dtssdk/a/b;->b:Ljava/lang/String;

    const-string v2, "More than one inbox accessory found. Returning the first one."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/a;

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtssdk/a/b;->e:Lcom/dts/dtssdk/a/b$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/a/b;->e:Lcom/dts/dtssdk/a/b$e;

    iget-object v0, v0, Lcom/dts/dtssdk/a/b$e;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/dts/dtssdk/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dts/dtssdk/a/b;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v0, p0, Lcom/dts/dtssdk/a/b;->e:Lcom/dts/dtssdk/a/b$e;

    iget-object v0, v0, Lcom/dts/dtssdk/a/b$e;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method final a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtssdk/a/l;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v2

    sget-object v3, Lcom/dts/dtssdk/e;->l:Lcom/dts/dtssdk/e;

    invoke-virtual {v2, v3}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v1, Lcom/dts/dtssdk/a/b;->b:Ljava/lang/String;

    const-string v2, "Speaker mode feature is not enabled. Aborting query and returning empty list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/dts/dtssdk/a/b;->a(Ljava/util/ArrayList;)V

    if-eqz p1, :cond_2

    const-string v2, "SpeakerModeAttach1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, v0}, Lcom/dts/dtssdk/a/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Query for speaker modes returning "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " entr(ies)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v1, v0, p1}, Lcom/dts/dtssdk/a/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {v1, v0}, Lcom/dts/dtssdk/a/b;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method final a(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtssdk/a/a/b;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtssdk/a/i;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/dts/dtssdk/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/dts/dtssdk/a/m;

    invoke-direct {v0}, Lcom/dts/dtssdk/a/m;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-direct {p0, v5, p1}, Lcom/dts/dtssdk/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x1

    move v0, v4

    move v1, v4

    move v2, v4

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Lcom/dts/dtssdk/a/b$d;

    invoke-direct {v8, p0}, Lcom/dts/dtssdk/a/b$d;-><init>(Lcom/dts/dtssdk/a/b;)V

    if-eqz v3, :cond_1

    const-string v0, "Brand"

    const-string v1, "Id"

    invoke-static {v0, v1}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v0, "Brand"

    const-string v1, "Uuid"

    invoke-static {v0, v1}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v0, "Brand"

    const-string v3, "Name"

    invoke-static {v0, v3}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move v3, v4

    :cond_1
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v8, Lcom/dts/dtssdk/a/b$d;->j:I

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/dts/dtssdk/a/b$d;->a:Ljava/lang/String;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/dts/dtssdk/a/b$d;->b:Ljava/lang/String;

    new-instance v9, Lcom/dts/dtssdk/a/i;

    invoke-direct {v9, v8}, Lcom/dts/dtssdk/a/i;-><init>(Lcom/dts/dtssdk/a/b$d;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Query for brands returning "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entr(ies)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v6
.end method

.method final a(Ljava/util/List;I)Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtssdk/a/a/b;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/dts/dtssdk/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/dts/dtssdk/a/m;

    invoke-direct {v4}, Lcom/dts/dtssdk/a/m;-><init>()V

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/a/b;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dts/dtssdk/a/a/b;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/dts/dtssdk/a/i;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    check-cast v4, Lcom/dts/dtssdk/a/i;

    iget v9, v4, Lcom/dts/dtssdk/a/i;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v22

    invoke-virtual {v0, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/dts/dtssdk/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;I)Landroid/database/Cursor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move v4, v6

    move v8, v6

    move v9, v6

    move v10, v6

    move v11, v6

    move v12, v6

    move v13, v6

    move v14, v6

    move v15, v6

    move/from16 v16, v6

    move/from16 v17, v7

    move v7, v6

    :goto_1
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v18

    if-nez v18, :cond_12

    new-instance v24, Lcom/dts/dtssdk/a/b$g;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/a/b$g;-><init>(Lcom/dts/dtssdk/a/b;)V

    if-eqz v17, :cond_15

    const/16 v18, 0x0

    const-string v4, "Product"

    const-string v6, "Id"

    invoke-static {v4, v6}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    const-string v4, "Product"

    const-string v6, "Uuid"

    invoke-static {v4, v6}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    const-string v4, "Product"

    const-string v6, "BrandId"

    invoke-static {v4, v6}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v4, "Product"

    const-string v6, "Name"

    invoke-static {v4, v6}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v4, "Product"

    const-string v6, "Description"

    invoke-static {v4, v6}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v4, "Product"

    const-string v6, "Type"

    invoke-static {v4, v6}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v4, "Product"

    const-string v6, "SubType"

    invoke-static {v4, v6}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v4, "Product"

    const-string v6, "ReleaseDate"

    invoke-static {v4, v6}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v4, "Product"

    const-string v6, "NoiseCancelingSupport"

    invoke-static {v4, v6}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v4, "Brand"

    const-string v6, "Uuid"

    invoke-static {v4, v6}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v4, "Brand"

    const-string v6, "Name"

    invoke-static {v4, v6}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v4, "DeviceFeaturedProduct"

    const-string v6, "ListOrder"

    invoke-static {v4, v6}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    :goto_2
    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Lcom/dts/dtssdk/a/b$g;->j:I

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/dts/dtssdk/a/b$g;->a:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    :goto_3
    move-object/from16 v0, v24

    iput v4, v0, Lcom/dts/dtssdk/a/b$g;->b:I

    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/dts/dtssdk/a/b$g;->c:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/dts/dtssdk/a/b$g;->d:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/dts/dtssdk/a/b$g;->e:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/dts/dtssdk/a/b$g;->f:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/dts/dtssdk/a/b$g;->g:J

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Lcom/dts/dtssdk/a/b$g;->h:I

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v4

    sget-object v19, Lcom/dts/dtssdk/e;->l:Lcom/dts/dtssdk/e;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/dts/dtssdk/a/b$g;->e:Ljava/lang/String;

    const-string v19, "DeviceHeadphone"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v19, "Device headphone found "

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/dts/dtssdk/a/b$g;->c:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/dts/dtssdk/a/a;

    const/16 v19, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/dts/dtssdk/a/a;-><init>(Lcom/dts/dtssdk/a/b$g;Lcom/dts/dtssdk/a/i;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/dts/dtssdk/a/b$g;->e:Ljava/lang/String;

    const-string v19, "DeviceTuning"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v19, "Device Tuning found "

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/dts/dtssdk/a/b$g;->c:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/dts/dtssdk/a/a;

    const/16 v19, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/dts/dtssdk/a/a;-><init>(Lcom/dts/dtssdk/a/b$g;Lcom/dts/dtssdk/a/i;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    :goto_5
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move v5, v4

    move v4, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    :cond_6
    move-object/from16 v0, v24

    iget v4, v0, Lcom/dts/dtssdk/a/b$g;->b:I

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_8

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v4

    sget-object v19, Lcom/dts/dtssdk/e;->c:Lcom/dts/dtssdk/e;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Lcom/dts/dtssdk/a/a;

    const/16 v19, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/dts/dtssdk/a/a;-><init>(Lcom/dts/dtssdk/a/b$g;Lcom/dts/dtssdk/a/i;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v5, 0x1

    goto :goto_5

    :cond_8
    move-object/from16 v0, v24

    iget v4, v0, Lcom/dts/dtssdk/a/b$g;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dts/dtssdk/a/i;

    if-nez v4, :cond_14

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_9

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v7, v0, :cond_b

    :cond_9
    sget-object v19, Lcom/dts/dtssdk/a/b;->b:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Product ("

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v0, v0, Lcom/dts/dtssdk/a/b$g;->j:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ") has a brand ID of "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v24

    iget v0, v0, Lcom/dts/dtssdk/a/b$g;->b:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " but the query did not contain brand data. Not assigning brand"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v4

    :goto_6
    const/4 v4, -0x1

    if-eq v6, v4, :cond_a

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_a
    const/4 v4, -0x1

    :goto_7
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v4, v0, :cond_e

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v25

    sget-object v26, Lcom/dts/dtssdk/e;->b:Lcom/dts/dtssdk/e;

    invoke-virtual/range {v25 .. v26}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v25

    if-eqz v25, :cond_d

    new-instance v25, Lcom/dts/dtssdk/a/a;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v4}, Lcom/dts/dtssdk/a/a;-><init>(Lcom/dts/dtssdk/a/b$g;Lcom/dts/dtssdk/a/i;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto/16 :goto_5

    :cond_b
    new-instance v19, Lcom/dts/dtssdk/a/b$d;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/a/b$d;-><init>(Lcom/dts/dtssdk/a/b;)V

    move-object/from16 v0, v24

    iget v4, v0, Lcom/dts/dtssdk/a/b$g;->b:I

    move-object/from16 v0, v19

    iput v4, v0, Lcom/dts/dtssdk/a/b$d;->j:I

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/dts/dtssdk/a/b$d;->a:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/dts/dtssdk/a/b$d;->b:Ljava/lang/String;

    new-instance v4, Lcom/dts/dtssdk/a/i;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lcom/dts/dtssdk/a/i;-><init>(Lcom/dts/dtssdk/a/b$d;)V

    iget v0, v4, Lcom/dts/dtssdk/a/i;->a:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v4

    goto :goto_6

    :cond_c
    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    goto :goto_7

    :cond_d
    add-int/lit8 v4, v5, 0x1

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/dts/dtssdk/a/b$g;->a:Ljava/lang/String;

    if-eqz v4, :cond_10

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/dts/dtssdk/a/b$g;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dts/dtssdk/a/b;->e:Lcom/dts/dtssdk/a/b$e;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/dts/dtssdk/a/b$e;->d:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v4

    sget-object v25, Lcom/dts/dtssdk/e;->d:Lcom/dts/dtssdk/e;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v4, Lcom/dts/dtssdk/a/a;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/dts/dtssdk/a/a;-><init>(Lcom/dts/dtssdk/a/b$g;Lcom/dts/dtssdk/a/i;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto/16 :goto_5

    :cond_f
    add-int/lit8 v4, v5, 0x1

    goto/16 :goto_5

    :cond_10
    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v4

    sget-object v25, Lcom/dts/dtssdk/e;->a:Lcom/dts/dtssdk/e;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v4, Lcom/dts/dtssdk/a/a;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/dts/dtssdk/a/a;-><init>(Lcom/dts/dtssdk/a/b$g;Lcom/dts/dtssdk/a/i;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto/16 :goto_5

    :cond_11
    add-int/lit8 v4, v5, 0x1

    goto/16 :goto_5

    :cond_12
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    if-lez v5, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " accessory(ies) were skipped during query due to disabled features"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Query for accessories returning "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " entr(ies)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v21

    :cond_14
    move-object/from16 v19, v4

    goto/16 :goto_6

    :cond_15
    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v4

    goto/16 :goto_2
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 12

    if-nez p1, :cond_0

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    new-instance v9, Lcom/dts/dtssdk/a/b$c;

    invoke-direct {v9, p0}, Lcom/dts/dtssdk/a/b$c;-><init>(Lcom/dts/dtssdk/a/b;)V

    const/4 v8, 0x0

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "Asset"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND Uuid=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "Id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "Data"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "Filesize"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "Type"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "Uri"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "Uuid"

    aput-object v3, v2, v1

    invoke-virtual {p0}, Lcom/dts/dtssdk/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    sget-object v3, Lcom/dts/dtssdk/a/b;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "More than one matching entries found for uuid: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Returning the last occurring entry."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v2

    move v2, v0

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_4

    if-eqz v7, :cond_2

    const-string v0, "Id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v0, "Data"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v0, "Filesize"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v0, "Type"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v0, "Uri"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v0, "Uuid"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v7, 0x0

    :cond_2
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v9, Lcom/dts/dtssdk/a/b$c;->j:I

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    iput-object v8, v9, Lcom/dts/dtssdk/a/b$c;->c:[B

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v9, Lcom/dts/dtssdk/a/b$c;->d:I

    invoke-interface {v10, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    :goto_2
    iput-object v8, v9, Lcom/dts/dtssdk/a/b$c;->a:Ljava/lang/String;

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/dts/dtssdk/a/b$c;->b:Ljava/lang/String;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/dts/dtssdk/a/b$c;->e:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "Asset ID #"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v9, Lcom/dts/dtssdk/a/b$c;->j:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " exists; Loading data"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lcom/dts/dtssdk/a/b$c;->c:[B

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_3
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0
.end method

.method final b(Ljava/lang/String;)Lcom/dts/dtssdk/a/a;
    .locals 17

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/dts/dtssdk/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Lcom/dts/dtssdk/a/m;

    invoke-direct {v4}, Lcom/dts/dtssdk/a/m;-><init>()V

    const/4 v2, 0x0

    const-string v5, "Product"

    const-string v6, "Id"

    invoke-virtual {v4, v5, v6}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v5

    const-string v6, "Product"

    const-string v7, "Uuid"

    invoke-virtual {v5, v6, v7}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v5

    const-string v6, "Product"

    const-string v7, "BrandId"

    invoke-virtual {v5, v6, v7}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v5

    const-string v6, "Product"

    const-string v7, "Name"

    invoke-virtual {v5, v6, v7}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v5

    const-string v6, "Product"

    const-string v7, "Description"

    invoke-virtual {v5, v6, v7}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v5

    const-string v6, "Product"

    const-string v7, "Type"

    invoke-virtual {v5, v6, v7}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v5

    const-string v6, "Product"

    const-string v7, "SubType"

    invoke-virtual {v5, v6, v7}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v5

    const-string v6, "Product"

    const-string v7, "ReleaseDate"

    invoke-virtual {v5, v6, v7}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v5

    const-string v6, "Product"

    const-string v7, "NoiseCancelingSupport"

    invoke-virtual {v5, v6, v7}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v5, "Brand"

    const-string v6, "Uuid"

    invoke-virtual {v4, v5, v6}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v5

    const-string v6, "Brand"

    const-string v7, "Name"

    invoke-virtual {v5, v6, v7}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v5, "Product"

    invoke-virtual {v4, v5}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v5, "Brand"

    invoke-virtual {v4, v5}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v5, "BluetoothLookup"

    invoke-virtual {v4, v5}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v5, "Product.BrandId = Brand.Id"

    invoke-virtual {v4, v5}, Lcom/dts/dtssdk/a/m;->f(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v5, "BluetoothLookup.Name LIKE ?  COLLATE NOCASE AND BluetoothLookup.Uuid = Product.Uuid"

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Lcom/dts/dtssdk/a/m;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    invoke-virtual {v4}, Lcom/dts/dtssdk/a/m;->b()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/dts/dtssdk/a/m;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Did not find any bluetooth device name: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in the bluetooth lookup table. Returning null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v5, Lcom/dts/dtssdk/a/b$g;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/dts/dtssdk/a/b$g;-><init>(Lcom/dts/dtssdk/a/b;)V

    const-string v2, "Product"

    const-string v6, "Id"

    invoke-static {v2, v6}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v6, "Product"

    const-string v7, "Uuid"

    invoke-static {v6, v7}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "Product"

    const-string v8, "BrandId"

    invoke-static {v7, v8}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "Product"

    const-string v9, "Name"

    invoke-static {v8, v9}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "Product"

    const-string v10, "Description"

    invoke-static {v9, v10}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "Product"

    const-string v11, "Type"

    invoke-static {v10, v11}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "Product"

    const-string v12, "SubType"

    invoke-static {v11, v12}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "Product"

    const-string v13, "ReleaseDate"

    invoke-static {v12, v13}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "Product"

    const-string v14, "NoiseCancelingSupport"

    invoke-static {v13, v14}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "Brand"

    const-string v15, "Uuid"

    invoke-static {v14, v15}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "Brand"

    const-string v16, "Name"

    invoke-static/range {v15 .. v16}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v5, Lcom/dts/dtssdk/a/b$g;->j:I

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/dts/dtssdk/a/b$g;->a:Ljava/lang/String;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    :goto_2
    iput v2, v5, Lcom/dts/dtssdk/a/b$g;->b:I

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/dts/dtssdk/a/b$g;->c:Ljava/lang/String;

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    :goto_3
    iput-object v2, v5, Lcom/dts/dtssdk/a/b$g;->d:Ljava/lang/String;

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/dts/dtssdk/a/b$g;->e:Ljava/lang/String;

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/dts/dtssdk/a/b$g;->f:Ljava/lang/String;

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/dts/dtssdk/a/b$g;->g:J

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v5, Lcom/dts/dtssdk/a/b$g;->h:I

    iget v2, v5, Lcom/dts/dtssdk/a/b$g;->b:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_6

    new-instance v2, Lcom/dts/dtssdk/a/a;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lcom/dts/dtssdk/a/a;-><init>(Lcom/dts/dtssdk/a/b$g;Lcom/dts/dtssdk/a/i;)V

    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    sget-object v5, Lcom/dts/dtssdk/a/b;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "More than one product with bluetooth name: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " found!. Returning last occurrence"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto :goto_2

    :cond_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    const/4 v2, -0x1

    if-eq v14, v2, :cond_7

    const/4 v2, -0x1

    if-ne v15, v2, :cond_8

    :cond_7
    sget-object v2, Lcom/dts/dtssdk/a/b;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Product ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v5, Lcom/dts/dtssdk/a/b$g;->j:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") has a brand ID of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/dts/dtssdk/a/b$g;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but the query did not contain brand data. Not assigning brand"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/dts/dtssdk/a/a;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lcom/dts/dtssdk/a/a;-><init>(Lcom/dts/dtssdk/a/b$g;Lcom/dts/dtssdk/a/i;)V

    goto :goto_4

    :cond_8
    new-instance v2, Lcom/dts/dtssdk/a/b$d;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/dts/dtssdk/a/b$d;-><init>(Lcom/dts/dtssdk/a/b;)V

    iget v6, v5, Lcom/dts/dtssdk/a/b$g;->b:I

    iput v6, v2, Lcom/dts/dtssdk/a/b$d;->j:I

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/dts/dtssdk/a/b$d;->a:Ljava/lang/String;

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/dts/dtssdk/a/b$d;->b:Ljava/lang/String;

    new-instance v6, Lcom/dts/dtssdk/a/i;

    invoke-direct {v6, v2}, Lcom/dts/dtssdk/a/i;-><init>(Lcom/dts/dtssdk/a/b$d;)V

    new-instance v2, Lcom/dts/dtssdk/a/a;

    invoke-direct {v2, v5, v6}, Lcom/dts/dtssdk/a/a;-><init>(Lcom/dts/dtssdk/a/b$g;Lcom/dts/dtssdk/a/i;)V

    goto/16 :goto_4

    :cond_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/dts/dtssdk/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dts/dtssdk/a/b;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v0, p0, Lcom/dts/dtssdk/a/b;->e:Lcom/dts/dtssdk/a/b$e;

    iget-object v0, v0, Lcom/dts/dtssdk/a/b$e;->b:Ljava/lang/String;

    return-object v0
.end method

.method final c(Ljava/lang/String;)Lcom/dts/dtssdk/a/a;
    .locals 17

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/dts/dtssdk/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Lcom/dts/dtssdk/a/m;

    invoke-direct {v4}, Lcom/dts/dtssdk/a/m;-><init>()V

    const/4 v2, 0x0

    const-string v5, "Product"

    const-string v6, "Id"

    invoke-virtual {v4, v5, v6}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v5

    const-string v6, "Product"

    const-string v7, "Uuid"

    invoke-virtual {v5, v6, v7}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v5

    const-string v6, "Product"

    const-string v7, "BrandId"

    invoke-virtual {v5, v6, v7}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v5

    const-string v6, "Product"

    const-string v7, "Name"

    invoke-virtual {v5, v6, v7}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v5

    const-string v6, "Product"

    const-string v7, "Description"

    invoke-virtual {v5, v6, v7}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v5

    const-string v6, "Product"

    const-string v7, "Type"

    invoke-virtual {v5, v6, v7}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v5

    const-string v6, "Product"

    const-string v7, "SubType"

    invoke-virtual {v5, v6, v7}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v5

    const-string v6, "Product"

    const-string v7, "ReleaseDate"

    invoke-virtual {v5, v6, v7}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v5

    const-string v6, "Product"

    const-string v7, "NoiseCancelingSupport"

    invoke-virtual {v5, v6, v7}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v5, "Brand"

    const-string v6, "Uuid"

    invoke-virtual {v4, v5, v6}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    move-result-object v5

    const-string v6, "Brand"

    const-string v7, "Name"

    invoke-virtual {v5, v6, v7}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v5, "Product"

    invoke-virtual {v4, v5}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v5, "Brand"

    invoke-virtual {v4, v5}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v5, "USBLookup"

    invoke-virtual {v4, v5}, Lcom/dts/dtssdk/a/m;->b(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v5, "Product.BrandId = Brand.Id"

    invoke-virtual {v4, v5}, Lcom/dts/dtssdk/a/m;->f(Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    const-string v5, "USBLookup.Name LIKE ?  COLLATE NOCASE AND USBLookup.Uuid = Product.Uuid"

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Lcom/dts/dtssdk/a/m;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/m;

    invoke-virtual {v4}, Lcom/dts/dtssdk/a/m;->b()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/dts/dtssdk/a/m;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Did not find any USB device with USB device identifier: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in the USB lookup table. Returning null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v5, Lcom/dts/dtssdk/a/b$g;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/dts/dtssdk/a/b$g;-><init>(Lcom/dts/dtssdk/a/b;)V

    const-string v2, "Product"

    const-string v6, "Id"

    invoke-static {v2, v6}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v6, "Product"

    const-string v7, "Uuid"

    invoke-static {v6, v7}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "Product"

    const-string v8, "BrandId"

    invoke-static {v7, v8}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "Product"

    const-string v9, "Name"

    invoke-static {v8, v9}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "Product"

    const-string v10, "Description"

    invoke-static {v9, v10}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "Product"

    const-string v11, "Type"

    invoke-static {v10, v11}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "Product"

    const-string v12, "SubType"

    invoke-static {v11, v12}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "Product"

    const-string v13, "ReleaseDate"

    invoke-static {v12, v13}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "Product"

    const-string v14, "NoiseCancelingSupport"

    invoke-static {v13, v14}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "Brand"

    const-string v15, "Uuid"

    invoke-static {v14, v15}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "Brand"

    const-string v16, "Name"

    invoke-static/range {v15 .. v16}, Lcom/dts/dtssdk/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v5, Lcom/dts/dtssdk/a/b$g;->j:I

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/dts/dtssdk/a/b$g;->a:Ljava/lang/String;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    :goto_2
    iput v2, v5, Lcom/dts/dtssdk/a/b$g;->b:I

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/dts/dtssdk/a/b$g;->c:Ljava/lang/String;

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    :goto_3
    iput-object v2, v5, Lcom/dts/dtssdk/a/b$g;->d:Ljava/lang/String;

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/dts/dtssdk/a/b$g;->e:Ljava/lang/String;

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/dts/dtssdk/a/b$g;->f:Ljava/lang/String;

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/dts/dtssdk/a/b$g;->g:J

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v5, Lcom/dts/dtssdk/a/b$g;->h:I

    iget v2, v5, Lcom/dts/dtssdk/a/b$g;->b:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_6

    new-instance v2, Lcom/dts/dtssdk/a/a;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lcom/dts/dtssdk/a/a;-><init>(Lcom/dts/dtssdk/a/b$g;Lcom/dts/dtssdk/a/i;)V

    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    sget-object v5, Lcom/dts/dtssdk/a/b;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "More than one product with USB device identifier: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " found!. Returning last occurrence"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto :goto_2

    :cond_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    const/4 v2, -0x1

    if-eq v14, v2, :cond_7

    const/4 v2, -0x1

    if-ne v15, v2, :cond_8

    :cond_7
    sget-object v2, Lcom/dts/dtssdk/a/b;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Product ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v5, Lcom/dts/dtssdk/a/b$g;->j:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") has a brand ID of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/dts/dtssdk/a/b$g;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but the query did not contain brand data. Not assigning brand"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/dts/dtssdk/a/a;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lcom/dts/dtssdk/a/a;-><init>(Lcom/dts/dtssdk/a/b$g;Lcom/dts/dtssdk/a/i;)V

    goto :goto_4

    :cond_8
    new-instance v2, Lcom/dts/dtssdk/a/b$d;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/dts/dtssdk/a/b$d;-><init>(Lcom/dts/dtssdk/a/b;)V

    iget v6, v5, Lcom/dts/dtssdk/a/b$g;->b:I

    iput v6, v2, Lcom/dts/dtssdk/a/b$d;->j:I

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/dts/dtssdk/a/b$d;->a:Ljava/lang/String;

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/dts/dtssdk/a/b$d;->b:Ljava/lang/String;

    new-instance v6, Lcom/dts/dtssdk/a/i;

    invoke-direct {v6, v2}, Lcom/dts/dtssdk/a/i;-><init>(Lcom/dts/dtssdk/a/b$d;)V

    new-instance v2, Lcom/dts/dtssdk/a/a;

    invoke-direct {v2, v5, v6}, Lcom/dts/dtssdk/a/a;-><init>(Lcom/dts/dtssdk/a/b$g;Lcom/dts/dtssdk/a/i;)V

    goto/16 :goto_4

    :cond_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0
.end method

.method final c()Lcom/dts/dtssdk/a/f;
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/dts/dtssdk/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/dts/dtssdk/a/b;->b(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/a/b;->e:Lcom/dts/dtssdk/a/b$e;

    iget-object v0, v0, Lcom/dts/dtssdk/a/b$e;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/dts/dtssdk/a/b;->e:Lcom/dts/dtssdk/a/b$e;

    iget-object v4, v4, Lcom/dts/dtssdk/a/b$e;->b:Ljava/lang/String;

    invoke-static {v1, v0, v4}, Lcom/dts/dtssdk/a/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/f;

    move-result-object v0

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Database error check completed in "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0

    :catch_0
    move-exception v4

    sget-object v5, Lcom/dts/dtssdk/a/b;->b:Ljava/lang/String;

    const-string v6, "Building device info cache failed for unknown reason"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-static {v1, v7, v7}, Lcom/dts/dtssdk/a/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/dts/dtssdk/a/f;

    move-result-object v0

    goto :goto_1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
