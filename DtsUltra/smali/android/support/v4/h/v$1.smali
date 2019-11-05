.class final Landroid/support/v4/h/v$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/h/v;->a(Landroid/view/View;Landroid/support/v4/h/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/h/w;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/v4/h/v;


# direct methods
.method constructor <init>(Landroid/support/v4/h/v;Landroid/support/v4/h/w;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/h/v$1;->c:Landroid/support/v4/h/v;

    iput-object p2, p0, Landroid/support/v4/h/v$1;->a:Landroid/support/v4/h/w;

    iput-object p3, p0, Landroid/support/v4/h/v$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/h/v$1;->a:Landroid/support/v4/h/w;

    iget-object v1, p0, Landroid/support/v4/h/v$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/h/w;->c(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/h/v$1;->a:Landroid/support/v4/h/w;

    iget-object v1, p0, Landroid/support/v4/h/v$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/h/w;->b(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/h/v$1;->a:Landroid/support/v4/h/w;

    iget-object v1, p0, Landroid/support/v4/h/v$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/h/w;->a(Landroid/view/View;)V

    return-void
.end method
