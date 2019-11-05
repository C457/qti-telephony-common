.class final Landroid/support/v7/app/f$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/f;


# direct methods
.method constructor <init>(Landroid/support/v7/app/f;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/f$6;->a:Landroid/support/v7/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/app/f$6;->a:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->k:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/app/f$6;->a:Landroid/support/v7/app/f;

    iget-object v1, v1, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Landroid/support/v7/app/f$6;->a:Landroid/support/v7/app/f;

    invoke-virtual {v0}, Landroid/support/v7/app/f;->m()V

    iget-object v0, p0, Landroid/support/v7/app/f$6;->a:Landroid/support/v7/app/f;

    invoke-virtual {v0}, Landroid/support/v7/app/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f$6;->a:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/v7/app/f$6;->a:Landroid/support/v7/app/f;

    iget-object v1, p0, Landroid/support/v7/app/f$6;->a:Landroid/support/v7/app/f;

    iget-object v1, v1, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v1}, Landroid/support/v4/h/r;->m(Landroid/view/View;)Landroid/support/v4/h/v;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/h/v;->a(F)Landroid/support/v4/h/v;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/f;->m:Landroid/support/v4/h/v;

    iget-object v0, p0, Landroid/support/v7/app/f$6;->a:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->m:Landroid/support/v4/h/v;

    new-instance v1, Landroid/support/v7/app/f$6$1;

    invoke-direct {v1, p0}, Landroid/support/v7/app/f$6$1;-><init>(Landroid/support/v7/app/f$6;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/h/v;->a(Landroid/support/v4/h/w;)Landroid/support/v4/h/v;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/f$6;->a:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/v7/app/f$6;->a:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_0
.end method
