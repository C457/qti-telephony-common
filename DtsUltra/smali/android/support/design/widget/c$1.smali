.class final Landroid/support/design/widget/c$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/design/widget/c$d;

.field final synthetic c:Landroid/support/design/widget/c;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/support/design/widget/c;Landroid/support/design/widget/c$d;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/widget/c$1;->c:Landroid/support/design/widget/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/c$1;->a:Z

    iput-object p2, p0, Landroid/support/design/widget/c$1;->b:Landroid/support/design/widget/c$d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/c$1;->d:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/c$1;->c:Landroid/support/design/widget/c;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/design/widget/c;->b:I

    iget-object v0, p0, Landroid/support/design/widget/c$1;->c:Landroid/support/design/widget/c;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/design/widget/c;->c:Landroid/animation/Animator;

    iget-boolean v0, p0, Landroid/support/design/widget/c$1;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/c$1;->c:Landroid/support/design/widget/c;

    iget-object v1, v0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    iget-boolean v0, p0, Landroid/support/design/widget/c$1;->a:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    iget-boolean v2, p0, Landroid/support/design/widget/c$1;->a:Z

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/p;->a(IZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/design/widget/c$1;->c:Landroid/support/design/widget/c;

    iget-object v0, v0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    iget-boolean v1, p0, Landroid/support/design/widget/c$1;->a:Z

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/p;->a(IZ)V

    iget-object v0, p0, Landroid/support/design/widget/c$1;->c:Landroid/support/design/widget/c;

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/design/widget/c;->b:I

    iget-object v0, p0, Landroid/support/design/widget/c$1;->c:Landroid/support/design/widget/c;

    iput-object p1, v0, Landroid/support/design/widget/c;->c:Landroid/animation/Animator;

    iput-boolean v2, p0, Landroid/support/design/widget/c$1;->d:Z

    return-void
.end method
