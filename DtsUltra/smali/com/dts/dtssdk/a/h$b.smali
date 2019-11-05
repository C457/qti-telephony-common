.class abstract Lcom/dts/dtssdk/a/h$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "b"
.end annotation


# instance fields
.field final synthetic d:Lcom/dts/dtssdk/a/h;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/a/h$b;->d:Lcom/dts/dtssdk/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/dts/dtssdk/a/f;)V
    .locals 7

    if-nez p1, :cond_1

    invoke-static {}, Lcom/dts/dtssdk/a/h;->b()Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/dts/dtssdk/b/c;->a()Lcom/dts/dtssdk/b/c;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/dts/dtssdk/b/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/dts/dtssdk/a/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/f$a;

    invoke-static {}, Lcom/dts/dtssdk/b/c;->a()Lcom/dts/dtssdk/b/c;

    move-result-object v4

    if-nez v0, :cond_2

    sget-object v0, Lcom/dts/dtssdk/b/c;->a:Ljava/lang/String;

    const-string v1, "logErrorDatabase(): AccessoryDatastoreIntegrityReport.ComponentError cannot be null. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/dts/dtssdk/b/c$d;->E:Lcom/dts/dtssdk/b/c$d;

    invoke-virtual {v1}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/dts/dtssdk/a/f$a;->a:Lcom/dts/dtssdk/a/f$c;

    invoke-virtual {v2}, Lcom/dts/dtssdk/a/f$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/dts/dtssdk/a/f$a;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v2}, Lcom/dts/dtssdk/a/f$d;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/dts/dtssdk/b/c$d;->F:Lcom/dts/dtssdk/b/c$d;

    invoke-virtual {v1}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/dts/dtssdk/a/f$a;->a:Lcom/dts/dtssdk/a/f$c;

    invoke-static {v2}, Lcom/dts/dtssdk/b/c;->b(Lcom/dts/dtssdk/a/f$c;)Lcom/dts/dtssdk/b/c$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dts/dtssdk/b/c$b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/dts/dtssdk/a/f$a;->a:Lcom/dts/dtssdk/a/f$c;

    invoke-static {v0}, Lcom/dts/dtssdk/b/c;->a(Lcom/dts/dtssdk/a/f$c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Lcom/dts/dtssdk/b/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/dts/dtssdk/a/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/f$b;

    invoke-static {}, Lcom/dts/dtssdk/b/c;->a()Lcom/dts/dtssdk/b/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dts/dtssdk/b/c;->a(Lcom/dts/dtssdk/a/f$b;)V

    goto :goto_2
.end method


# virtual methods
.method abstract a()V
.end method

.method protected final a(Landroid/content/Context;Lcom/dts/dtssdk/a/f;)Z
    .locals 6

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/a/h;->b()Ljava/lang/String;

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    iget-object v0, p2, Lcom/dts/dtssdk/a/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/f$a;

    iget-object v4, v0, Lcom/dts/dtssdk/a/f$a;->a:Lcom/dts/dtssdk/a/f$c;

    sget-object v5, Lcom/dts/dtssdk/a/f$c;->a:Lcom/dts/dtssdk/a/f$c;

    if-eq v4, v5, :cond_2

    iget-object v4, v0, Lcom/dts/dtssdk/a/f$a;->a:Lcom/dts/dtssdk/a/f$c;

    sget-object v5, Lcom/dts/dtssdk/a/f$c;->b:Lcom/dts/dtssdk/a/f$c;

    if-eq v4, v5, :cond_2

    iget-object v4, v0, Lcom/dts/dtssdk/a/f$a;->a:Lcom/dts/dtssdk/a/f$c;

    sget-object v5, Lcom/dts/dtssdk/a/f$c;->c:Lcom/dts/dtssdk/a/f$c;

    if-ne v4, v5, :cond_1

    :cond_2
    iget-object v0, v0, Lcom/dts/dtssdk/a/f$a;->a:Lcom/dts/dtssdk/a/f$c;

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/dts/dtssdk/a/h;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!     Catastrophic error found     !"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/dts/dtssdk/a/h;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!!!   Catastrophic error found   !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/dts/dtssdk/a/h;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!!!!! Catastrophic error found !!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/dts/dtssdk/a/h;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/dts/dtssdk/a/h;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Resetting database to factory setting!"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/dts/dtssdk/a/h$b;->d:Lcom/dts/dtssdk/a/h;

    invoke-static {v2}, Lcom/dts/dtssdk/a/h;->a(Lcom/dts/dtssdk/a/h;)Lcom/dts/dtssdk/a/b;

    invoke-static {p1}, Lcom/dts/dtssdk/a/b;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/dts/dtssdk/a/h$b;->d:Lcom/dts/dtssdk/a/h;

    invoke-static {v2}, Lcom/dts/dtssdk/a/h;->b(Lcom/dts/dtssdk/a/h;)Lcom/dts/dtssdk/a/b;

    iget-object v2, p0, Lcom/dts/dtssdk/a/h$b;->d:Lcom/dts/dtssdk/a/h;

    invoke-static {v2, p1}, Lcom/dts/dtssdk/a/h;->a(Lcom/dts/dtssdk/a/h;Landroid/content/Context;)V

    invoke-static {}, Lcom/dts/dtssdk/a/h;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Database reset completed"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/dts/dtssdk/a/f$e;->b:Lcom/dts/dtssdk/a/f$e;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p2, Lcom/dts/dtssdk/a/f;->b:Ljava/util/List;

    new-instance v5, Lcom/dts/dtssdk/a/f$b;

    invoke-direct {v5, p2, v2, v0, v3}, Lcom/dts/dtssdk/a/f$b;-><init>(Lcom/dts/dtssdk/a/f;Lcom/dts/dtssdk/a/f$e;Lcom/dts/dtssdk/a/f$c;Ljava/util/HashMap;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-static {p1, p2}, Lcom/dts/dtssdk/a/h$b;->b(Landroid/content/Context;Lcom/dts/dtssdk/a/f;)V

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/dts/dtssdk/a/h;->b()Ljava/lang/String;

    goto :goto_2

    :cond_4
    move v0, v1

    goto/16 :goto_0

    :cond_5
    move-object v0, v2

    goto :goto_1
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/dts/dtssdk/a/h$b;->a()V

    return-void
.end method
