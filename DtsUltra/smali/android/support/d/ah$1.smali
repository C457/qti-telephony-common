.class final Landroid/support/d/ah$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/d/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/d/v;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/d/ah;


# direct methods
.method constructor <init>(Landroid/support/d/ah;Landroid/support/d/v;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/d/ah$1;->c:Landroid/support/d/ah;

    iput-object p2, p0, Landroid/support/d/ah$1;->a:Landroid/support/d/v;

    iput-object p3, p0, Landroid/support/d/ah$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/d/ah$1;->a:Landroid/support/d/v;

    iget-object v1, p0, Landroid/support/d/ah$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/d/v;->b(Landroid/view/View;)V

    return-void
.end method
