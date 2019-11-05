.class public Landroid/support/d/p;
.super Landroid/support/d/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/d/p$a;
    }
.end annotation


# instance fields
.field n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/d/l;",
            ">;"
        }
    .end annotation
.end field

.field o:Z

.field p:I

.field q:Z

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/d/l;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/d/p;->o:Z

    iput-boolean v1, p0, Landroid/support/d/p;->q:Z

    iput v1, p0, Landroid/support/d/p;->r:I

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/d/l;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    goto :goto_0
.end method

.method public final synthetic a(J)Landroid/support/d/l;
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/support/d/l;->a(J)Landroid/support/d/l;

    iget-wide v0, p0, Landroid/support/d/p;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    invoke-virtual {v0, p1, p2}, Landroid/support/d/l;->a(J)Landroid/support/d/l;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final synthetic a(Landroid/animation/TimeInterpolator;)Landroid/support/d/l;
    .locals 3

    iget v0, p0, Landroid/support/d/p;->r:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/d/p;->r:I

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    invoke-virtual {v0, p1}, Landroid/support/d/l;->a(Landroid/animation/TimeInterpolator;)Landroid/support/d/l;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/d/l;->a(Landroid/animation/TimeInterpolator;)Landroid/support/d/l;

    move-result-object v0

    check-cast v0, Landroid/support/d/p;

    return-object v0
.end method

.method public final bridge synthetic a(Landroid/support/d/l$c;)Landroid/support/d/l;
    .locals 1

    invoke-super {p0, p1}, Landroid/support/d/l;->a(Landroid/support/d/l$c;)Landroid/support/d/l;

    move-result-object v0

    check-cast v0, Landroid/support/d/p;

    return-object v0
.end method

.method public final a(Landroid/support/d/l;)Landroid/support/d/p;
    .locals 4

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Landroid/support/d/l;->h:Landroid/support/d/p;

    iget-wide v0, p0, Landroid/support/d/p;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/support/d/p;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/support/d/l;->a(J)Landroid/support/d/l;

    :cond_0
    iget v0, p0, Landroid/support/d/p;->r:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/d/l;->c:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/support/d/l;->a(Landroid/animation/TimeInterpolator;)Landroid/support/d/l;

    :cond_1
    iget v0, p0, Landroid/support/d/p;->r:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/d/l;->k:Landroid/support/d/o;

    invoke-virtual {p1, v0}, Landroid/support/d/l;->a(Landroid/support/d/o;)V

    :cond_2
    iget v0, p0, Landroid/support/d/p;->r:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/d/l;->m:Landroid/support/d/g;

    invoke-virtual {p1, v0}, Landroid/support/d/l;->a(Landroid/support/d/g;)V

    :cond_3
    iget v0, p0, Landroid/support/d/p;->r:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/d/l;->l:Landroid/support/d/l$b;

    invoke-virtual {p1, v0}, Landroid/support/d/l;->a(Landroid/support/d/l$b;)V

    :cond_4
    return-object p0
.end method

.method final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-super {p0, p1}, Landroid/support/d/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    iget-object v2, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/d/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final a(Landroid/support/d/g;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/d/l;->a(Landroid/support/d/g;)V

    iget v0, p0, Landroid/support/d/p;->r:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/support/d/p;->r:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    invoke-virtual {v0, p1}, Landroid/support/d/l;->a(Landroid/support/d/g;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/support/d/l$b;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/d/l;->a(Landroid/support/d/l$b;)V

    iget v0, p0, Landroid/support/d/p;->r:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/support/d/p;->r:I

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    invoke-virtual {v0, p1}, Landroid/support/d/l;->a(Landroid/support/d/l$b;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/support/d/o;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/d/l;->a(Landroid/support/d/o;)V

    iget v0, p0, Landroid/support/d/p;->r:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/d/p;->r:I

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    invoke-virtual {v0, p1}, Landroid/support/d/l;->a(Landroid/support/d/o;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/support/d/r;)V
    .locals 3

    iget-object v0, p1, Landroid/support/d/r;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/d/p;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    iget-object v2, p1, Landroid/support/d/r;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/support/d/l;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/d/l;->a(Landroid/support/d/r;)V

    iget-object v2, p1, Landroid/support/d/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final a(Landroid/view/ViewGroup;Landroid/support/d/s;Landroid/support/d/s;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/d/s;",
            "Landroid/support/d/s;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/d/r;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/d/r;",
            ">;)V"
        }
    .end annotation

    iget-wide v8, p0, Landroid/support/d/l;->a:J

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_3

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-lez v1, :cond_1

    iget-boolean v1, p0, Landroid/support/d/p;->o:Z

    if-nez v1, :cond_0

    if-nez v6, :cond_1

    :cond_0
    iget-wide v2, v0, Landroid/support/d/l;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    add-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Landroid/support/d/l;->b(J)Landroid/support/d/l;

    :cond_1
    :goto_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/d/l;->a(Landroid/view/ViewGroup;Landroid/support/d/s;Landroid/support/d/s;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v8, v9}, Landroid/support/d/l;->b(J)Landroid/support/d/l;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final bridge synthetic b(J)Landroid/support/d/l;
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/d/l;->b(J)Landroid/support/d/l;

    move-result-object v0

    check-cast v0, Landroid/support/d/p;

    return-object v0
.end method

.method public final bridge synthetic b(Landroid/support/d/l$c;)Landroid/support/d/l;
    .locals 1

    invoke-super {p0, p1}, Landroid/support/d/l;->b(Landroid/support/d/l$c;)Landroid/support/d/l;

    move-result-object v0

    check-cast v0, Landroid/support/d/p;

    return-object v0
.end method

.method public final synthetic b(Landroid/view/View;)Landroid/support/d/l;
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    invoke-virtual {v0, p1}, Landroid/support/d/l;->b(Landroid/view/View;)Landroid/support/d/l;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/d/l;->b(Landroid/view/View;)Landroid/support/d/l;

    move-result-object v0

    check-cast v0, Landroid/support/d/p;

    return-object v0
.end method

.method protected final b()V
    .locals 4

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/d/p;->c()V

    invoke-virtual {p0}, Landroid/support/d/p;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/support/d/p$a;

    invoke-direct {v1, p0}, Landroid/support/d/p$a;-><init>(Landroid/support/d/p;)V

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    invoke-virtual {v0, v1}, Landroid/support/d/l;->a(Landroid/support/d/l$c;)Landroid/support/d/l;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroid/support/d/p;->p:I

    iget-boolean v0, p0, Landroid/support/d/p;->o:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    move v2, v0

    :goto_2
    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    iget-object v1, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/d/l;

    new-instance v3, Landroid/support/d/p$1;

    invoke-direct {v3, p0, v1}, Landroid/support/d/p$1;-><init>(Landroid/support/d/p;Landroid/support/d/l;)V

    invoke-virtual {v0, v3}, Landroid/support/d/l;->a(Landroid/support/d/l$c;)Landroid/support/d/l;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/d/l;->b()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    invoke-virtual {v0}, Landroid/support/d/l;->b()V

    goto :goto_3
.end method

.method public final b(Landroid/support/d/r;)V
    .locals 3

    iget-object v0, p1, Landroid/support/d/r;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/d/p;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    iget-object v2, p1, Landroid/support/d/r;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/support/d/l;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/d/l;->b(Landroid/support/d/r;)V

    iget-object v2, p1, Landroid/support/d/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final synthetic c(Landroid/view/View;)Landroid/support/d/l;
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    invoke-virtual {v0, p1}, Landroid/support/d/l;->c(Landroid/view/View;)Landroid/support/d/l;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/d/l;->c(Landroid/view/View;)Landroid/support/d/l;

    move-result-object v0

    check-cast v0, Landroid/support/d/p;

    return-object v0
.end method

.method final c(Landroid/support/d/r;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/d/l;->c(Landroid/support/d/r;)V

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    invoke-virtual {v0, p1}, Landroid/support/d/l;->c(Landroid/support/d/r;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/support/d/p;->e()Landroid/support/d/l;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/d/l;->d(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    invoke-virtual {v0, p1}, Landroid/support/d/l;->d(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()Landroid/support/d/l;
    .locals 4

    invoke-super {p0}, Landroid/support/d/l;->e()Landroid/support/d/l;

    move-result-object v0

    check-cast v0, Landroid/support/d/p;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v1, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/d/l;

    invoke-virtual {v1}, Landroid/support/d/l;->e()Landroid/support/d/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/d/p;->a(Landroid/support/d/l;)Landroid/support/d/p;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final e(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/d/l;->e(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/d/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    invoke-virtual {v0, p1}, Landroid/support/d/l;->e(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
