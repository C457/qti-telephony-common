.class final Landroid/support/v7/app/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/f;

.field private b:Landroid/support/v7/view/b$a;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/f;Landroid/support/v7/view/b$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/f$b;->a:Landroid/support/v7/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/app/f$b;->b:Landroid/support/v7/view/b$a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/b;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/app/f$b;->b:Landroid/support/v7/view/b$a;

    invoke-interface {v0, p1}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;)V

    iget-object v0, p0, Landroid/support/v7/app/f$b;->a:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->k:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f$b;->a:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/f$b;->a:Landroid/support/v7/app/f;

    iget-object v1, v1, Landroid/support/v7/app/f;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/f$b;->a:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/f$b;->a:Landroid/support/v7/app/f;

    invoke-virtual {v0}, Landroid/support/v7/app/f;->m()V

    iget-object v0, p0, Landroid/support/v7/app/f$b;->a:Landroid/support/v7/app/f;

    iget-object v1, p0, Landroid/support/v7/app/f$b;->a:Landroid/support/v7/app/f;

    iget-object v1, v1, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v1}, Landroid/support/v4/h/r;->m(Landroid/view/View;)Landroid/support/v4/h/v;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/h/v;->a(F)Landroid/support/v4/h/v;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/f;->m:Landroid/support/v4/h/v;

    iget-object v0, p0, Landroid/support/v7/app/f$b;->a:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->m:Landroid/support/v4/h/v;

    new-instance v1, Landroid/support/v7/app/f$b$1;

    invoke-direct {v1, p0}, Landroid/support/v7/app/f$b$1;-><init>(Landroid/support/v7/app/f$b;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/h/v;->a(Landroid/support/v4/h/w;)Landroid/support/v4/h/v;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/f$b;->a:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->f:Landroid/support/v7/app/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/f$b;->a:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->f:Landroid/support/v7/app/d;

    iget-object v0, p0, Landroid/support/v7/app/f$b;->a:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->i:Landroid/support/v7/view/b;

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/f$b;->a:Landroid/support/v7/app/f;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/f;->i:Landroid/support/v7/view/b;

    return-void
.end method

.method public final a(Landroid/support/v7/view/b;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/f$b;->b:Landroid/support/v7/view/b$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v7/view/b;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/f$b;->b:Landroid/support/v7/view/b$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/support/v7/view/b;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/f$b;->b:Landroid/support/v7/view/b$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/b$a;->b(Landroid/support/v7/view/b;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
