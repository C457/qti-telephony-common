.class final Landroid/support/v7/app/l$1;
.super Landroid/support/v4/h/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/l;


# direct methods
.method constructor <init>(Landroid/support/v7/app/l;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/l$1;->a:Landroid/support/v7/app/l;

    invoke-direct {p0}, Landroid/support/v4/h/x;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/app/l$1;->a:Landroid/support/v7/app/l;

    iget-boolean v0, v0, Landroid/support/v7/app/l;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/l$1;->a:Landroid/support/v7/app/l;

    iget-object v0, v0, Landroid/support/v7/app/l;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/l$1;->a:Landroid/support/v7/app/l;

    iget-object v0, v0, Landroid/support/v7/app/l;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroid/support/v7/app/l$1;->a:Landroid/support/v7/app/l;

    iget-object v0, v0, Landroid/support/v7/app/l;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/l$1;->a:Landroid/support/v7/app/l;

    iget-object v0, v0, Landroid/support/v7/app/l;->c:Landroid/support/v7/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/l$1;->a:Landroid/support/v7/app/l;

    iget-object v0, v0, Landroid/support/v7/app/l;->c:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object v0, p0, Landroid/support/v7/app/l$1;->a:Landroid/support/v7/app/l;

    iput-object v3, v0, Landroid/support/v7/app/l;->n:Landroid/support/v7/view/h;

    iget-object v0, p0, Landroid/support/v7/app/l$1;->a:Landroid/support/v7/app/l;

    iget-object v1, v0, Landroid/support/v7/app/l;->j:Landroid/support/v7/view/b$a;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/v7/app/l;->j:Landroid/support/v7/view/b$a;

    iget-object v2, v0, Landroid/support/v7/app/l;->i:Landroid/support/v7/view/b;

    invoke-interface {v1, v2}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;)V

    iput-object v3, v0, Landroid/support/v7/app/l;->i:Landroid/support/v7/view/b;

    iput-object v3, v0, Landroid/support/v7/app/l;->j:Landroid/support/v7/view/b$a;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/l$1;->a:Landroid/support/v7/app/l;

    iget-object v0, v0, Landroid/support/v7/app/l;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/l$1;->a:Landroid/support/v7/app/l;

    iget-object v0, v0, Landroid/support/v7/app/l;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v4/h/r;->q(Landroid/view/View;)V

    :cond_2
    return-void
.end method
