.class final Landroid/support/v7/app/f$6$1;
.super Landroid/support/v4/h/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/f$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/f$6;


# direct methods
.method constructor <init>(Landroid/support/v7/app/f$6;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/f$6$1;->a:Landroid/support/v7/app/f$6;

    invoke-direct {p0}, Landroid/support/v4/h/x;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/f$6$1;->a:Landroid/support/v7/app/f$6;

    iget-object v0, v0, Landroid/support/v7/app/f$6;->a:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/f$6$1;->a:Landroid/support/v7/app/f$6;

    iget-object v0, v0, Landroid/support/v7/app/f$6;->a:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/v7/app/f$6$1;->a:Landroid/support/v7/app/f$6;

    iget-object v0, v0, Landroid/support/v7/app/f$6;->a:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->m:Landroid/support/v4/h/v;

    invoke-virtual {v0, v2}, Landroid/support/v4/h/v;->a(Landroid/support/v4/h/w;)Landroid/support/v4/h/v;

    iget-object v0, p0, Landroid/support/v7/app/f$6$1;->a:Landroid/support/v7/app/f$6;

    iget-object v0, v0, Landroid/support/v7/app/f$6;->a:Landroid/support/v7/app/f;

    iput-object v2, v0, Landroid/support/v7/app/f;->m:Landroid/support/v4/h/v;

    return-void
.end method
