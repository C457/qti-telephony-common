.class public Landroid/support/d/e;
.super Landroid/support/v4/app/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/r;-><init>()V

    return-void
.end method

.method private static a(Landroid/support/d/l;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/d/l;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/support/d/e;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/l;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/support/d/e;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/l;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/support/d/e;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/d/p;

    invoke-direct {v0}, Landroid/support/d/p;-><init>()V

    if-eqz p1, :cond_0

    check-cast p1, Landroid/support/d/l;

    invoke-virtual {v0, p1}, Landroid/support/d/p;->a(Landroid/support/d/l;)Landroid/support/d/p;

    :cond_0
    if-eqz p2, :cond_1

    check-cast p2, Landroid/support/d/l;

    invoke-virtual {v0, p2}, Landroid/support/d/p;->a(Landroid/support/d/l;)Landroid/support/d/p;

    :cond_1
    if-eqz p3, :cond_2

    check-cast p3, Landroid/support/d/l;

    invoke-virtual {v0, p3}, Landroid/support/d/p;->a(Landroid/support/d/l;)Landroid/support/d/p;

    :cond_2
    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/support/d/l;

    invoke-static {p1, p2}, Landroid/support/d/n;->a(Landroid/view/ViewGroup;Landroid/support/d/l;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/support/d/l;

    new-instance v0, Landroid/support/d/e$4;

    invoke-direct {v0, p0, p2}, Landroid/support/d/e$4;-><init>(Landroid/support/d/e;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/support/d/l;->a(Landroid/support/d/l$b;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/view/View;)V
    .locals 2

    if-eqz p2, :cond_0

    check-cast p1, Landroid/support/d/l;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p2, v0}, Landroid/support/d/e;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    new-instance v1, Landroid/support/d/e$1;

    invoke-direct {v1, p0, v0}, Landroid/support/d/e$1;-><init>(Landroid/support/d/e;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/support/d/l;->a(Landroid/support/d/l$b;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Landroid/support/d/p;

    iget-object v2, p1, Landroid/support/d/l;->e:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v2, v0}, Landroid/support/d/e;->a(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p3}, Landroid/support/d/e;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Landroid/support/d/l;

    new-instance v0, Landroid/support/d/e$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Landroid/support/d/e$3;-><init>(Landroid/support/d/e;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroid/support/d/l;->a(Landroid/support/d/l$c;)Landroid/support/d/l;

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast p1, Landroid/support/d/l;

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    instance-of v1, p1, Landroid/support/d/p;

    if-eqz v1, :cond_2

    check-cast p1, Landroid/support/d/p;

    iget-object v1, p1, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/d/p;->a(I)Landroid/support/d/l;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Landroid/support/d/e;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/support/d/e;->a(Landroid/support/d/l;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/support/d/l;->e:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/support/d/e;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/d/l;->b(Landroid/view/View;)Landroid/support/d/l;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Landroid/support/d/p;

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/support/d/l;->e:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p1, Landroid/support/d/l;->e:Ljava/util/ArrayList;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/d/e;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/d/l;

    return v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p1, Landroid/support/d/l;

    invoke-virtual {p1}, Landroid/support/d/l;->e()Landroid/support/d/l;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    check-cast p1, Landroid/support/d/l;

    check-cast p2, Landroid/support/d/l;

    check-cast p3, Landroid/support/d/l;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    new-instance v0, Landroid/support/d/p;

    invoke-direct {v0}, Landroid/support/d/p;-><init>()V

    invoke-virtual {v0, p1}, Landroid/support/d/p;->a(Landroid/support/d/l;)Landroid/support/d/p;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/d/p;->a(Landroid/support/d/l;)Landroid/support/d/p;

    move-result-object v1

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/support/d/p;->o:Z

    :cond_0
    :goto_0
    if-eqz p3, :cond_4

    new-instance v0, Landroid/support/d/p;

    invoke-direct {v0}, Landroid/support/d/p;-><init>()V

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/d/p;->a(Landroid/support/d/l;)Landroid/support/d/p;

    :cond_1
    invoke-virtual {v0, p3}, Landroid/support/d/p;->a(Landroid/support/d/l;)Landroid/support/d/p;

    :goto_1
    return-object v0

    :cond_2
    if-eqz p1, :cond_3

    move-object v1, p1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public final b(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    check-cast p1, Landroid/support/d/l;

    invoke-virtual {p1, p2}, Landroid/support/d/l;->b(Landroid/view/View;)Landroid/support/d/l;

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Landroid/support/d/l;

    new-instance v0, Landroid/support/d/e$2;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/d/e$2;-><init>(Landroid/support/d/e;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroid/support/d/l;->a(Landroid/support/d/l$c;)Landroid/support/d/l;

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast p1, Landroid/support/d/l;

    instance-of v1, p1, Landroid/support/d/p;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/support/d/p;

    iget-object v1, p1, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/support/d/p;->a(I)Landroid/support/d/l;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Landroid/support/d/e;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/support/d/e;->a(Landroid/support/d/l;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/support/d/l;->e:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-interface {v1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p3, :cond_1

    move v1, v0

    :goto_1
    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/d/l;->b(Landroid/view/View;)Landroid/support/d/l;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/d/l;->c(Landroid/view/View;)Landroid/support/d/l;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/d/p;

    invoke-direct {v0}, Landroid/support/d/p;-><init>()V

    check-cast p1, Landroid/support/d/l;

    invoke-virtual {v0, p1}, Landroid/support/d/p;->a(Landroid/support/d/l;)Landroid/support/d/p;

    goto :goto_0
.end method

.method public final c(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    check-cast p1, Landroid/support/d/l;

    invoke-virtual {p1, p2}, Landroid/support/d/l;->c(Landroid/view/View;)Landroid/support/d/l;

    :cond_0
    return-void
.end method
