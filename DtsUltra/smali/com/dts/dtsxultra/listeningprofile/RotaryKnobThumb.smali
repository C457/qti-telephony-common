.class public Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;
    }
.end annotation


# static fields
.field static final synthetic h:Z


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field d:Landroid/widget/ImageView;

.field e:F

.field f:I

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:F

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->h:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->a:F

    iput v1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->b:F

    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->c:F

    iput v1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->i:F

    iput-boolean v2, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->m:Z

    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->e:F

    iput v2, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->f:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->g:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->setup(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->a:F

    iput v1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->b:F

    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->c:F

    iput v1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->i:F

    iput-boolean v2, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->m:Z

    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->e:F

    iput v2, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->f:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->g:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->setup(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->a:F

    iput v1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->b:F

    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->c:F

    iput v1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->i:F

    iput-boolean v2, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->m:Z

    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->e:F

    iput v2, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->f:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->g:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->setup(Landroid/content/Context;)V

    return-void
.end method

.method private a(FF)F
    .locals 2

    invoke-virtual {p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v0, p1, v0

    sub-float v1, p2, v1

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private b(FF)F
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p0, p1, p2}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->a(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float v1, p1, v1

    div-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v2, p2, v2

    div-float v0, v2, v0

    float-to-double v2, v0

    float-to-double v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method private setPointerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->l:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->l:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    aput-object p1, v0, v3

    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x190

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iput-object p1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->l:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;)V
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->a:F

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->a(FF)F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->e:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    packed-switch v3, :pswitch_data_0

    :cond_1
    const/4 v2, 0x1

    return v2

    :pswitch_0
    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->m:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->j:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->b(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->i:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;->a(Z)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->m:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->m:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->k:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;->a(Z)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->a:F

    invoke-virtual/range {p0 .. p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->getRotation()F

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;->a(FFLjava/lang/Boolean;)V

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->m:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->getRotation()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->b(FF)F

    move-result v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->i:F

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float v5, v4, v5

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v3, v6

    sub-float v3, v5, v3

    const/high16 v5, 0x43340000    # 180.0f

    add-float/2addr v5, v3

    const/high16 v6, 0x43b40000    # 360.0f

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v5, v6

    const/high16 v6, 0x43b40000    # 360.0f

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float v5, v3, v5

    add-float v6, v2, v5

    float-to-double v2, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->b:F

    float-to-double v8, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->c:F

    float-to-double v10, v7

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    const-wide v14, 0x4076800000000000L    # 360.0

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    const-wide/16 v14, 0x0

    const-wide v16, 0x4076800000000000L    # 360.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    cmpl-double v7, v10, v14

    if-eqz v7, :cond_2

    cmpl-double v7, v12, v8

    if-nez v7, :cond_3

    :cond_2
    const-wide/16 v2, 0x0

    :goto_2
    double-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->b:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->a:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->b:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->c:F

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->a:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->setRotation(F)V

    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-lez v2, :cond_4

    const/4 v2, 0x1

    move v3, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->a:F

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;->a(FFLjava/lang/Boolean;)V

    goto :goto_4

    :cond_3
    sub-double/2addr v10, v14

    sub-double/2addr v12, v8

    div-double/2addr v10, v12

    sub-double/2addr v2, v14

    div-double/2addr v2, v10

    add-double/2addr v2, v8

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    move v3, v2

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iput v4, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->i:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->a:F

    invoke-virtual/range {p0 .. p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->getRotation()F

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;->a(FFLjava/lang/Boolean;)V

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setRotation(F)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setRotation(F)V

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->d:Landroid/widget/ImageView;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public setup(Landroid/content/Context;)V
    .locals 4

    const v2, 0x7f0700b7

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0b0044

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f08013a

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->l:Landroid/graphics/drawable/Drawable;

    sget-boolean v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3ff3333333333333L    # 1.2

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->e:F

    :cond_1
    return-void
.end method
