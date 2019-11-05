.class final Landroid/support/design/widget/c$2;
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


# direct methods
.method constructor <init>(Landroid/support/design/widget/c;Landroid/support/design/widget/c$d;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/widget/c$2;->c:Landroid/support/design/widget/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/c$2;->a:Z

    iput-object p2, p0, Landroid/support/design/widget/c$2;->b:Landroid/support/design/widget/c$d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/c$2;->c:Landroid/support/design/widget/c;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/design/widget/c;->b:I

    iget-object v0, p0, Landroid/support/design/widget/c$2;->c:Landroid/support/design/widget/c;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/design/widget/c;->c:Landroid/animation/Animator;

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/c$2;->c:Landroid/support/design/widget/c;

    iget-object v0, v0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/design/widget/c$2;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/p;->a(IZ)V

    iget-object v0, p0, Landroid/support/design/widget/c$2;->c:Landroid/support/design/widget/c;

    const/4 v1, 0x2

    iput v1, v0, Landroid/support/design/widget/c;->b:I

    iget-object v0, p0, Landroid/support/design/widget/c$2;->c:Landroid/support/design/widget/c;

    iput-object p1, v0, Landroid/support/design/widget/c;->c:Landroid/animation/Animator;

    return-void
.end method
