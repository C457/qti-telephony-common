.class final Landroid/support/v7/widget/RecyclerView$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$g;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$w;->a(Z)V

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$w;->h:Landroid/support/v7/widget/RecyclerView$w;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$w;->i:Landroid/support/v7/widget/RecyclerView$w;

    if-nez v2, :cond_0

    iput-object v3, p1, Landroid/support/v7/widget/RecyclerView$w;->h:Landroid/support/v7/widget/RecyclerView$w;

    :cond_0
    iput-object v3, p1, Landroid/support/v7/widget/RecyclerView$w;->i:Landroid/support/v7/widget/RecyclerView$w;

    iget v2, p1, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$g;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p1, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->d()V

    iget-object v2, v3, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/ai;

    iget-object v5, v2, Landroid/support/v7/widget/ai;->a:Landroid/support/v7/widget/ai$b;

    invoke-interface {v5, v4}, Landroid/support/v7/widget/ai$b;->a(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)Z

    move v2, v0

    :goto_1
    if-eqz v2, :cond_1

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v4

    iget-object v5, v3, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$o;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/RecyclerView$o;->b(Landroid/support/v7/widget/RecyclerView$w;)V

    iget-object v5, v3, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$o;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/RecyclerView$o;->a(Landroid/support/v7/widget/RecyclerView$w;)V

    :cond_1
    if-nez v2, :cond_6

    :goto_2
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$g;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_2
    return-void

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    iget-object v6, v2, Landroid/support/v7/widget/ai;->b:Landroid/support/v7/widget/ai$a;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/ai$a;->c(I)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v2, Landroid/support/v7/widget/ai;->b:Landroid/support/v7/widget/ai$a;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/ai$a;->d(I)Z

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)Z

    iget-object v2, v2, Landroid/support/v7/widget/ai;->a:Landroid/support/v7/widget/ai$b;

    invoke-interface {v2, v5}, Landroid/support/v7/widget/ai$b;->a(I)V

    move v2, v0

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2
.end method
