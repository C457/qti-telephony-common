.class public abstract Landroid/support/v4/widget/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/a$a;,
        Landroid/support/v4/widget/a$b;
    }
.end annotation


# static fields
.field private static final r:I


# instance fields
.field final a:Landroid/support/v4/widget/a$a;

.field final b:Landroid/view/View;

.field c:Z

.field d:Z

.field e:Z

.field private final f:Landroid/view/animation/Interpolator;

.field private g:Ljava/lang/Runnable;

.field private h:[F

.field private i:[F

.field private j:I

.field private k:I

.field private l:[F

.field private m:[F

.field private n:[F

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/widget/a;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 8

    const v7, 0x3a83126f    # 0.001f

    const/high16 v6, 0x447a0000    # 1000.0f

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/widget/a$a;

    invoke-direct {v0}, Landroid/support/v4/widget/a$a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/a;->a:Landroid/support/v4/widget/a$a;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/a;->f:Landroid/view/animation/Interpolator;

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/support/v4/widget/a;->h:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/support/v4/widget/a;->i:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/support/v4/widget/a;->l:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Landroid/support/v4/widget/a;->m:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Landroid/support/v4/widget/a;->n:[F

    iput-object p1, p0, Landroid/support/v4/widget/a;->b:Landroid/view/View;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const v1, 0x44c4e000    # 1575.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    const v2, 0x439d8000    # 315.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v4/widget/a;->n:[F

    div-float v3, v1, v6

    aput v3, v2, v5

    iget-object v2, p0, Landroid/support/v4/widget/a;->n:[F

    div-float/2addr v1, v6

    aput v1, v2, v4

    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/v4/widget/a;->m:[F

    div-float v2, v0, v6

    aput v2, v1, v5

    iget-object v1, p0, Landroid/support/v4/widget/a;->m:[F

    div-float/2addr v0, v6

    aput v0, v1, v4

    iput v4, p0, Landroid/support/v4/widget/a;->j:I

    iget-object v0, p0, Landroid/support/v4/widget/a;->i:[F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    aput v1, v0, v5

    iget-object v0, p0, Landroid/support/v4/widget/a;->i:[F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    aput v1, v0, v4

    iget-object v0, p0, Landroid/support/v4/widget/a;->h:[F

    const v1, 0x3e4ccccd    # 0.2f

    aput v1, v0, v5

    iget-object v0, p0, Landroid/support/v4/widget/a;->h:[F

    const v1, 0x3e4ccccd    # 0.2f

    aput v1, v0, v4

    iget-object v0, p0, Landroid/support/v4/widget/a;->l:[F

    aput v7, v0, v5

    iget-object v0, p0, Landroid/support/v4/widget/a;->l:[F

    aput v7, v0, v4

    sget v0, Landroid/support/v4/widget/a;->r:I

    iput v0, p0, Landroid/support/v4/widget/a;->k:I

    iget-object v0, p0, Landroid/support/v4/widget/a;->a:Landroid/support/v4/widget/a$a;

    const/16 v1, 0x1f4

    iput v1, v0, Landroid/support/v4/widget/a$a;->a:I

    iget-object v0, p0, Landroid/support/v4/widget/a;->a:Landroid/support/v4/widget/a$a;

    const/16 v1, 0x1f4

    iput v1, v0, Landroid/support/v4/widget/a$a;->b:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private a(FF)F
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    cmpl-float v2, p2, v0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Landroid/support/v4/widget/a;->j:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    cmpg-float v2, p1, p2

    if-gez v2, :cond_0

    cmpl-float v2, p1, v0

    if-ltz v2, :cond_2

    div-float v0, p1, p2

    sub-float v0, v1, v0

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Landroid/support/v4/widget/a;->e:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v4/widget/a;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    neg-float v0, p2

    div-float v0, p1, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static a(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    goto :goto_0
.end method

.method private a(IFFF)F
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/a;->h:[F

    aget v0, v0, p1

    iget-object v2, p0, Landroid/support/v4/widget/a;->i:[F

    aget v2, v2, p1

    mul-float/2addr v0, p3

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result v0

    invoke-direct {p0, p2, v0}, Landroid/support/v4/widget/a;->a(FF)F

    move-result v2

    sub-float v3, p3, p2

    invoke-direct {p0, v3, v0}, Landroid/support/v4/widget/a;->a(FF)F

    move-result v0

    sub-float/2addr v0, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/a;->f:Landroid/view/animation/Interpolator;

    neg-float v0, v0

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    neg-float v0, v0

    :goto_0
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result v0

    :goto_1
    cmpl-float v2, v0, v1

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    return v0

    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/widget/a;->f:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/a;->l:[F

    aget v2, v2, p1

    iget-object v3, p0, Landroid/support/v4/widget/a;->m:[F

    aget v3, v3, p1

    iget-object v4, p0, Landroid/support/v4/widget/a;->n:[F

    aget v4, v4, p1

    mul-float/2addr v2, p4

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    mul-float/2addr v0, v2

    invoke-static {v0, v3, v4}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result v0

    goto :goto_2

    :cond_3
    neg-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0, v3, v4}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result v0

    neg-float v0, v0

    goto :goto_2
.end method

.method private b()V
    .locals 8

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/v4/widget/a;->c:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/support/v4/widget/a;->e:Z

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Landroid/support/v4/widget/a;->a:Landroid/support/v4/widget/a$a;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Landroid/support/v4/widget/a$a;->e:J

    sub-long v6, v4, v6

    long-to-int v2, v6

    iget v0, v3, Landroid/support/v4/widget/a$a;->b:I

    if-le v2, v0, :cond_1

    :goto_1
    iput v0, v3, Landroid/support/v4/widget/a$a;->k:I

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/a$a;->a(J)F

    move-result v0

    iput v0, v3, Landroid/support/v4/widget/a$a;->j:F

    iput-wide v4, v3, Landroid/support/v4/widget/a$a;->i:J

    goto :goto_0

    :cond_1
    if-gez v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(Z)Landroid/support/v4/widget/a;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/a;->p:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/a;->b()V

    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/widget/a;->p:Z

    return-object p0
.end method

.method public abstract a(I)V
.end method

.method final a()Z
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/a;->a:Landroid/support/v4/widget/a$a;

    iget v1, v0, Landroid/support/v4/widget/a$a;->d:F

    iget v2, v0, Landroid/support/v4/widget/a$a;->d:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, v0, Landroid/support/v4/widget/a$a;->c:F

    iget v0, v0, Landroid/support/v4/widget/a$a;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float v0, v2, v0

    float-to-int v0, v0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/a;->b(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract b(I)Z
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Landroid/support/v4/widget/a;->p:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    iget-boolean v2, p0, Landroid/support/v4/widget/a;->q:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v4/widget/a;->e:Z

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    iput-boolean v1, p0, Landroid/support/v4/widget/a;->d:Z

    iput-boolean v0, p0, Landroid/support/v4/widget/a;->o:Z

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/v4/widget/a;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v0, v2, v3, v4}, Landroid/support/v4/widget/a;->a(IFFF)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/v4/widget/a;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v1, v3, v4, v5}, Landroid/support/v4/widget/a;->a(IFFF)F

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/a;->a:Landroid/support/v4/widget/a$a;

    iput v2, v4, Landroid/support/v4/widget/a$a;->c:F

    iput v3, v4, Landroid/support/v4/widget/a$a;->d:F

    iget-boolean v2, p0, Landroid/support/v4/widget/a;->e:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/widget/a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/widget/a;->g:Ljava/lang/Runnable;

    if-nez v2, :cond_3

    new-instance v2, Landroid/support/v4/widget/a$b;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/a$b;-><init>(Landroid/support/v4/widget/a;)V

    iput-object v2, p0, Landroid/support/v4/widget/a;->g:Ljava/lang/Runnable;

    :cond_3
    iput-boolean v1, p0, Landroid/support/v4/widget/a;->e:Z

    iput-boolean v1, p0, Landroid/support/v4/widget/a;->c:Z

    iget-boolean v2, p0, Landroid/support/v4/widget/a;->o:Z

    if-nez v2, :cond_4

    iget v2, p0, Landroid/support/v4/widget/a;->k:I

    if-lez v2, :cond_4

    iget-object v2, p0, Landroid/support/v4/widget/a;->b:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v4/widget/a;->g:Ljava/lang/Runnable;

    iget v4, p0, Landroid/support/v4/widget/a;->k:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/h/r;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    :goto_2
    iput-boolean v1, p0, Landroid/support/v4/widget/a;->o:Z

    goto :goto_1

    :cond_4
    iget-object v2, p0, Landroid/support/v4/widget/a;->g:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0}, Landroid/support/v4/widget/a;->b()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
