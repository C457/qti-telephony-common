.class public final Landroid/support/design/widget/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/k$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/k$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/support/design/widget/k$a;

.field c:Landroid/animation/ValueAnimator;

.field private final d:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/k;->a:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/design/widget/k;->b:Landroid/support/design/widget/k$a;

    iput-object v1, p0, Landroid/support/design/widget/k;->c:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/support/design/widget/k$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/k$1;-><init>(Landroid/support/design/widget/k;)V

    iput-object v0, p0, Landroid/support/design/widget/k;->d:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method


# virtual methods
.method public final a([ILandroid/animation/ValueAnimator;)V
    .locals 2

    new-instance v0, Landroid/support/design/widget/k$a;

    invoke-direct {v0, p1, p2}, Landroid/support/design/widget/k$a;-><init>([ILandroid/animation/ValueAnimator;)V

    iget-object v1, p0, Landroid/support/design/widget/k;->d:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Landroid/support/design/widget/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
