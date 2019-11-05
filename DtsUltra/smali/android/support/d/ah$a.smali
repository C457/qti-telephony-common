.class final Landroid/support/d/ah$a;
.super Landroid/animation/AnimatorListenerAdapter;

# interfaces
.implements Landroid/support/d/a$a;
.implements Landroid/support/d/l$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/d/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Z

.field private final b:Landroid/view/View;

.field private final c:I

.field private final d:Landroid/view/ViewGroup;

.field private final e:Z

.field private f:Z


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/d/ah$a;->a:Z

    iput-object p1, p0, Landroid/support/d/ah$a;->b:Landroid/view/View;

    iput p2, p0, Landroid/support/d/ah$a;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/d/ah$a;->d:Landroid/view/ViewGroup;

    iput-boolean v1, p0, Landroid/support/d/ah$a;->e:Z

    invoke-direct {p0, v1}, Landroid/support/d/ah$a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/d/ah$a;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/d/ah$a;->f:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/d/ah$a;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/support/d/ah$a;->f:Z

    iget-object v0, p0, Landroid/support/d/ah$a;->d:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Landroid/support/d/w;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/d/ah$a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/d/ah$a;->b:Landroid/view/View;

    iget v1, p0, Landroid/support/d/ah$a;->c:I

    invoke-static {v0, v1}, Landroid/support/d/ac;->a(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/support/d/ah$a;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/ah$a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/d/ah$a;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/d/ah$a;->a(Z)V

    return-void
.end method

.method public final a(Landroid/support/d/l;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/d/ah$a;->d()V

    invoke-virtual {p1, p0}, Landroid/support/d/l;->b(Landroid/support/d/l$c;)Landroid/support/d/l;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/d/ah$a;->a(Z)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/d/ah$a;->a:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/d/ah$a;->d()V

    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/d/ah$a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/d/ah$a;->b:Landroid/view/View;

    iget v1, p0, Landroid/support/d/ah$a;->c:I

    invoke-static {v0, v1}, Landroid/support/d/ac;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/d/ah$a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/d/ah$a;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/d/ac;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
