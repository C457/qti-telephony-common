.class public Landroid/support/v4/g/a;
.super Landroid/support/v4/g/l;

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/g/l",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Landroid/support/v4/g/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/h",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/g/l;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/g/l;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/g/l;-><init>(Landroid/support/v4/g/l;)V

    return-void
.end method

.method private a()Landroid/support/v4/g/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/g/h",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/g/a;->a:Landroid/support/v4/g/h;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/g/a$1;

    invoke-direct {v0, p0}, Landroid/support/v4/g/a$1;-><init>(Landroid/support/v4/g/a;)V

    iput-object v0, p0, Landroid/support/v4/g/a;->a:Landroid/support/v4/g/h;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/g/a;->a:Landroid/support/v4/g/h;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/g/a;->a()Landroid/support/v4/g/h;

    move-result-object v0

    iget-object v1, v0, Landroid/support/v4/g/h;->b:Landroid/support/v4/g/h$b;

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/v4/g/h$b;

    invoke-direct {v1, v0}, Landroid/support/v4/g/h$b;-><init>(Landroid/support/v4/g/h;)V

    iput-object v1, v0, Landroid/support/v4/g/h;->b:Landroid/support/v4/g/h$b;

    :cond_0
    iget-object v0, v0, Landroid/support/v4/g/h;->b:Landroid/support/v4/g/h$b;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/g/a;->a()Landroid/support/v4/g/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/g/h;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    iget v0, p0, Landroid/support/v4/g/a;->h:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/g/a;->a(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/g/a;->a()Landroid/support/v4/g/h;

    move-result-object v0

    iget-object v1, v0, Landroid/support/v4/g/h;->d:Landroid/support/v4/g/h$e;

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/v4/g/h$e;

    invoke-direct {v1, v0}, Landroid/support/v4/g/h$e;-><init>(Landroid/support/v4/g/h;)V

    iput-object v1, v0, Landroid/support/v4/g/h;->d:Landroid/support/v4/g/h$e;

    :cond_0
    iget-object v0, v0, Landroid/support/v4/g/h;->d:Landroid/support/v4/g/h$e;

    return-object v0
.end method
