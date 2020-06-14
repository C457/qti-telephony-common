.class final Lcom/dts/dtssdk/a/h$k;
.super Lcom/dts/dtssdk/a/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/dts/dtssdk/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field final synthetic e:Lcom/dts/dtssdk/a/h;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/a/h;Landroid/content/Context;ILcom/dts/dtssdk/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/dts/dtssdk/a/h$k;->e:Lcom/dts/dtssdk/a/h;

    invoke-direct {p0, p1}, Lcom/dts/dtssdk/a/h$b;-><init>(Lcom/dts/dtssdk/a/h;)V

    iput-object p2, p0, Lcom/dts/dtssdk/a/h$k;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/dts/dtssdk/a/h$k;->b:Lcom/dts/dtssdk/c/c;

    iput p3, p0, Lcom/dts/dtssdk/a/h$k;->c:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/dts/dtssdk/a/h$k;->e:Lcom/dts/dtssdk/a/h;

    invoke-static {v0}, Lcom/dts/dtssdk/a/h;->a(Lcom/dts/dtssdk/a/h;)Lcom/dts/dtssdk/a/b;

    move-result-object v0

    iget v1, p0, Lcom/dts/dtssdk/a/h$k;->c:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Select * from ProductAudioRoute WHERE ProductId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "AudioRouteEnumId"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/dts/dtssdk/a/h;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error while running fetching Product Audio Route from Database"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtssdk/a/h$k;->b:Lcom/dts/dtssdk/c/c;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/a/h;->c()Lcom/dts/dtssdk/a/h$e;

    move-result-object v0

    const/16 v1, 0x209

    new-instance v2, Lcom/dts/dtssdk/a/h$f;

    iget-object v3, p0, Lcom/dts/dtssdk/a/h$k;->e:Lcom/dts/dtssdk/a/h;

    new-instance v4, Lcom/dts/dtssdk/f/a;

    sget-object v5, Lcom/dts/dtssdk/f/a$a;->h:Lcom/dts/dtssdk/f/a$a;

    const-string v6, "Error in fetching Product Audio Route list"

    invoke-direct {v4, v5, v6}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/dts/dtssdk/a/h$k;->b:Lcom/dts/dtssdk/c/c;

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/dts/dtssdk/a/h$f;-><init>(Lcom/dts/dtssdk/a/h;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/dts/dtssdk/a/h$e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v0, p0, Lcom/dts/dtssdk/a/h$k;->b:Lcom/dts/dtssdk/c/c;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/a/h;->c()Lcom/dts/dtssdk/a/h$e;

    move-result-object v0

    const/16 v1, 0x20

    new-instance v3, Lcom/dts/dtssdk/a/h$f;

    iget-object v4, p0, Lcom/dts/dtssdk/a/h$k;->e:Lcom/dts/dtssdk/a/h;

    new-instance v5, Lcom/dts/dtssdk/f/a;

    sget-object v6, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v5, v6}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    iget-object v6, p0, Lcom/dts/dtssdk/a/h$k;->b:Lcom/dts/dtssdk/c/c;

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/dts/dtssdk/a/h$f;-><init>(Lcom/dts/dtssdk/a/h;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v3}, Lcom/dts/dtssdk/a/h$e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
