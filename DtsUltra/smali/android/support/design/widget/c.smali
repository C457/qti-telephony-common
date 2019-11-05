.class public Landroid/support/design/widget/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/c$a;,
        Landroid/support/design/widget/c$c;,
        Landroid/support/design/widget/c$b;,
        Landroid/support/design/widget/c$e;,
        Landroid/support/design/widget/c$f;,
        Landroid/support/design/widget/c$d;
    }
.end annotation


# static fields
.field static final a:Landroid/animation/TimeInterpolator;

.field static final u:[I

.field static final v:[I

.field static final w:[I

.field static final x:[I

.field static final y:[I

.field static final z:[I


# instance fields
.field final A:Landroid/support/design/widget/p;

.field final B:Landroid/support/design/widget/i;

.field C:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final D:Landroid/support/design/widget/k;

.field private final E:Landroid/graphics/Rect;

.field private final F:Landroid/graphics/RectF;

.field private final G:Landroid/graphics/RectF;

.field private final H:Landroid/graphics/Matrix;

.field b:I

.field c:Landroid/animation/Animator;

.field d:Landroid/support/design/a/h;

.field e:Landroid/support/design/a/h;

.field f:Landroid/support/design/a/h;

.field g:Landroid/support/design/a/h;

.field h:Landroid/support/design/widget/h;

.field i:F

.field j:Landroid/graphics/drawable/Drawable;

.field k:Landroid/graphics/drawable/Drawable;

.field l:Landroid/support/design/widget/a;

.field m:Landroid/graphics/drawable/Drawable;

.field n:F

.field o:F

.field p:F

.field q:I

.field r:F

.field public s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    sget-object v0, Landroid/support/design/a/a;->c:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/support/design/widget/c;->a:Landroid/animation/TimeInterpolator;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/design/widget/c;->u:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/design/widget/c;->v:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/support/design/widget/c;->w:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/support/design/widget/c;->x:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/c;->y:[I

    new-array v0, v2, [I

    sput-object v0, Landroid/support/design/widget/c;->z:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method constructor <init>(Landroid/support/design/widget/p;Landroid/support/design/widget/i;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/c;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/design/widget/c;->r:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/c;->E:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/c;->F:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/c;->G:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/c;->H:Landroid/graphics/Matrix;

    iput-object p1, p0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    iput-object p2, p0, Landroid/support/design/widget/c;->B:Landroid/support/design/widget/i;

    new-instance v0, Landroid/support/design/widget/k;

    invoke-direct {v0}, Landroid/support/design/widget/k;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/c;->D:Landroid/support/design/widget/k;

    iget-object v0, p0, Landroid/support/design/widget/c;->D:Landroid/support/design/widget/k;

    sget-object v1, Landroid/support/design/widget/c;->u:[I

    new-instance v2, Landroid/support/design/widget/c$c;

    invoke-direct {v2, p0}, Landroid/support/design/widget/c$c;-><init>(Landroid/support/design/widget/c;)V

    invoke-static {v2}, Landroid/support/design/widget/c;->a(Landroid/support/design/widget/c$f;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/k;->a([ILandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Landroid/support/design/widget/c;->D:Landroid/support/design/widget/k;

    sget-object v1, Landroid/support/design/widget/c;->v:[I

    new-instance v2, Landroid/support/design/widget/c$b;

    invoke-direct {v2, p0}, Landroid/support/design/widget/c$b;-><init>(Landroid/support/design/widget/c;)V

    invoke-static {v2}, Landroid/support/design/widget/c;->a(Landroid/support/design/widget/c$f;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/k;->a([ILandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Landroid/support/design/widget/c;->D:Landroid/support/design/widget/k;

    sget-object v1, Landroid/support/design/widget/c;->w:[I

    new-instance v2, Landroid/support/design/widget/c$b;

    invoke-direct {v2, p0}, Landroid/support/design/widget/c$b;-><init>(Landroid/support/design/widget/c;)V

    invoke-static {v2}, Landroid/support/design/widget/c;->a(Landroid/support/design/widget/c$f;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/k;->a([ILandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Landroid/support/design/widget/c;->D:Landroid/support/design/widget/k;

    sget-object v1, Landroid/support/design/widget/c;->x:[I

    new-instance v2, Landroid/support/design/widget/c$b;

    invoke-direct {v2, p0}, Landroid/support/design/widget/c$b;-><init>(Landroid/support/design/widget/c;)V

    invoke-static {v2}, Landroid/support/design/widget/c;->a(Landroid/support/design/widget/c$f;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/k;->a([ILandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Landroid/support/design/widget/c;->D:Landroid/support/design/widget/k;

    sget-object v1, Landroid/support/design/widget/c;->y:[I

    new-instance v2, Landroid/support/design/widget/c$e;

    invoke-direct {v2, p0}, Landroid/support/design/widget/c$e;-><init>(Landroid/support/design/widget/c;)V

    invoke-static {v2}, Landroid/support/design/widget/c;->a(Landroid/support/design/widget/c$f;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/k;->a([ILandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Landroid/support/design/widget/c;->D:Landroid/support/design/widget/k;

    sget-object v1, Landroid/support/design/widget/c;->z:[I

    new-instance v2, Landroid/support/design/widget/c$a;

    invoke-direct {v2, p0}, Landroid/support/design/widget/c$a;-><init>(Landroid/support/design/widget/c;)V

    invoke-static {v2}, Landroid/support/design/widget/c;->a(Landroid/support/design/widget/c$f;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/k;->a([ILandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->getRotation()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/c;->i:F

    return-void
.end method

.method private static a(Landroid/support/design/widget/c$f;)Landroid/animation/ValueAnimator;
    .locals 4

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    sget-object v1, Landroid/support/design/widget/c;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(FLandroid/graphics/Matrix;)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/support/design/widget/c;->q:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/c;->F:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/support/design/widget/c;->G:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Landroid/support/design/widget/c;->q:I

    int-to-float v0, v0

    iget v3, p0, Landroid/support/design/widget/c;->q:I

    int-to-float v3, v3

    invoke-virtual {v2, v4, v4, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget v0, p0, Landroid/support/design/widget/c;->q:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    iget v1, p0, Landroid/support/design/widget/c;->q:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {p2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    return-void
.end method


# virtual methods
.method a()F
    .locals 1

    iget v0, p0, Landroid/support/design/widget/c;->n:F

    return v0
.end method

.method final a(Landroid/support/design/a/h;FFF)Landroid/animation/AnimatorSet;
    .locals 8

    const/4 v4, 0x1

    const/4 v7, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v4, [F

    aput p2, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "opacity"

    invoke-virtual {p1, v2}, Landroid/support/design/a/h;->a(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v4, [F

    aput p3, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "scale"

    invoke-virtual {p1, v2}, Landroid/support/design/a/h;->a(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v4, [F

    aput p3, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "scale"

    invoke-virtual {p1, v2}, Landroid/support/design/a/h;->a(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/design/widget/c;->H:Landroid/graphics/Matrix;

    invoke-direct {p0, p4, v1}, Landroid/support/design/widget/c;->a(FLandroid/graphics/Matrix;)V

    iget-object v1, p0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    new-instance v2, Landroid/support/design/a/f;

    invoke-direct {v2}, Landroid/support/design/a/f;-><init>()V

    new-instance v3, Landroid/support/design/a/g;

    invoke-direct {v3}, Landroid/support/design/a/g;-><init>()V

    new-array v4, v4, [Landroid/graphics/Matrix;

    new-instance v5, Landroid/graphics/Matrix;

    iget-object v6, p0, Landroid/support/design/widget/c;->H:Landroid/graphics/Matrix;

    invoke-direct {v5, v6}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v5, v4, v7

    invoke-static {v1, v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "iconScale"

    invoke-virtual {p1, v2}, Landroid/support/design/a/h;->a(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v1, v0}, Landroid/support/design/a/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object v1
.end method

.method final a(F)V
    .locals 2

    iput p1, p0, Landroid/support/design/widget/c;->r:F

    iget-object v0, p0, Landroid/support/design/widget/c;->H:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/c;->a(FLandroid/graphics/Matrix;)V

    iget-object v1, p0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/p;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method a(FFF)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/c;->h:Landroid/support/design/widget/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/c;->h:Landroid/support/design/widget/h;

    iget v1, p0, Landroid/support/design/widget/c;->p:F

    add-float/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/h;->a(FF)V

    invoke-virtual {p0}, Landroid/support/design/widget/c;->d()V

    :cond_0
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/c;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/c;->k:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/support/design/f/a;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/c;->h:Landroid/support/design/widget/h;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/h;->getPadding(Landroid/graphics/Rect;)Z

    return-void
.end method

.method a([I)V
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/support/design/widget/c;->D:Landroid/support/design/widget/k;

    iget-object v0, v3, Landroid/support/design/widget/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_3

    iget-object v0, v3, Landroid/support/design/widget/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/k$a;

    iget-object v5, v0, Landroid/support/design/widget/k$a;->a:[I

    invoke-static {v5, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    iget-object v2, v3, Landroid/support/design/widget/k;->b:Landroid/support/design/widget/k$a;

    if-eq v0, v2, :cond_1

    iget-object v2, v3, Landroid/support/design/widget/k;->b:Landroid/support/design/widget/k$a;

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/support/design/widget/k;->c:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/support/design/widget/k;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, v3, Landroid/support/design/widget/k;->c:Landroid/animation/ValueAnimator;

    :cond_0
    iput-object v0, v3, Landroid/support/design/widget/k;->b:Landroid/support/design/widget/k$a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/support/design/widget/k$a;->b:Landroid/animation/ValueAnimator;

    iput-object v0, v3, Landroid/support/design/widget/k;->c:Landroid/animation/ValueAnimator;

    iget-object v0, v3, Landroid/support/design/widget/k;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/c;->D:Landroid/support/design/widget/k;

    iget-object v1, v0, Landroid/support/design/widget/k;->c:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/design/widget/k;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/design/widget/k;->c:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method b(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method c()V
    .locals 0

    return-void
.end method

.method final d()V
    .locals 5

    iget-object v0, p0, Landroid/support/design/widget/c;->E:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/c;->a(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/c;->b(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/design/widget/c;->B:Landroid/support/design/widget/i;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/support/design/widget/i;->a(IIII)V

    return-void
.end method

.method e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v2}, Landroid/support/design/widget/p;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/support/design/widget/c;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/support/design/widget/c;->b:I

    if-ne v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method final g()Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-static {v0}, Landroid/support/v4/h/r;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
