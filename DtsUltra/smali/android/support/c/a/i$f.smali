.class final Landroid/support/c/a/i$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/c/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# static fields
.field private static final n:Landroid/graphics/Matrix;


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Paint;

.field final c:Landroid/support/c/a/i$c;

.field d:F

.field e:F

.field f:F

.field g:F

.field h:I

.field i:Ljava/lang/String;

.field j:Ljava/lang/Boolean;

.field final k:Landroid/support/v4/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/graphics/Path;

.field private final m:Landroid/graphics/Path;

.field private final o:Landroid/graphics/Matrix;

.field private p:Landroid/graphics/PathMeasure;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Landroid/support/c/a/i$f;->n:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$f;->o:Landroid/graphics/Matrix;

    iput v1, p0, Landroid/support/c/a/i$f;->d:F

    iput v1, p0, Landroid/support/c/a/i$f;->e:F

    iput v1, p0, Landroid/support/c/a/i$f;->f:F

    iput v1, p0, Landroid/support/c/a/i$f;->g:F

    const/16 v0, 0xff

    iput v0, p0, Landroid/support/c/a/i$f;->h:I

    iput-object v2, p0, Landroid/support/c/a/i$f;->i:Ljava/lang/String;

    iput-object v2, p0, Landroid/support/c/a/i$f;->j:Ljava/lang/Boolean;

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$f;->k:Landroid/support/v4/g/a;

    new-instance v0, Landroid/support/c/a/i$c;

    invoke-direct {v0}, Landroid/support/c/a/i$c;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$f;->c:Landroid/support/c/a/i$c;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$f;->l:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$f;->m:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/support/c/a/i$f;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$f;->o:Landroid/graphics/Matrix;

    iput v1, p0, Landroid/support/c/a/i$f;->d:F

    iput v1, p0, Landroid/support/c/a/i$f;->e:F

    iput v1, p0, Landroid/support/c/a/i$f;->f:F

    iput v1, p0, Landroid/support/c/a/i$f;->g:F

    const/16 v0, 0xff

    iput v0, p0, Landroid/support/c/a/i$f;->h:I

    iput-object v2, p0, Landroid/support/c/a/i$f;->i:Ljava/lang/String;

    iput-object v2, p0, Landroid/support/c/a/i$f;->j:Ljava/lang/Boolean;

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$f;->k:Landroid/support/v4/g/a;

    new-instance v0, Landroid/support/c/a/i$c;

    iget-object v1, p1, Landroid/support/c/a/i$f;->c:Landroid/support/c/a/i$c;

    iget-object v2, p0, Landroid/support/c/a/i$f;->k:Landroid/support/v4/g/a;

    invoke-direct {v0, v1, v2}, Landroid/support/c/a/i$c;-><init>(Landroid/support/c/a/i$c;Landroid/support/v4/g/a;)V

    iput-object v0, p0, Landroid/support/c/a/i$f;->c:Landroid/support/c/a/i$c;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/support/c/a/i$f;->l:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/support/c/a/i$f;->l:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/support/c/a/i$f;->m:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/support/c/a/i$f;->m:Landroid/graphics/Path;

    iget v0, p1, Landroid/support/c/a/i$f;->d:F

    iput v0, p0, Landroid/support/c/a/i$f;->d:F

    iget v0, p1, Landroid/support/c/a/i$f;->e:F

    iput v0, p0, Landroid/support/c/a/i$f;->e:F

    iget v0, p1, Landroid/support/c/a/i$f;->f:F

    iput v0, p0, Landroid/support/c/a/i$f;->f:F

    iget v0, p1, Landroid/support/c/a/i$f;->g:F

    iput v0, p0, Landroid/support/c/a/i$f;->g:F

    iget v0, p1, Landroid/support/c/a/i$f;->q:I

    iput v0, p0, Landroid/support/c/a/i$f;->q:I

    iget v0, p1, Landroid/support/c/a/i$f;->h:I

    iput v0, p0, Landroid/support/c/a/i$f;->h:I

    iget-object v0, p1, Landroid/support/c/a/i$f;->i:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/c/a/i$f;->i:Ljava/lang/String;

    iget-object v0, p1, Landroid/support/c/a/i$f;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i$f;->k:Landroid/support/v4/g/a;

    iget-object v1, p1, Landroid/support/c/a/i$f;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p1, Landroid/support/c/a/i$f;->j:Ljava/lang/Boolean;

    iput-object v0, p0, Landroid/support/c/a/i$f;->j:Ljava/lang/Boolean;

    return-void
.end method

.method private a(Landroid/support/c/a/i$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 12

    iget-object v2, p1, Landroid/support/c/a/i$c;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, p1, Landroid/support/c/a/i$c;->a:Landroid/graphics/Matrix;

    iget-object v3, p1, Landroid/support/c/a/i$c;->j:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x0

    move v9, v2

    :goto_0
    iget-object v2, p1, Landroid/support/c/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_f

    iget-object v2, p1, Landroid/support/c/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/c/a/i$d;

    instance-of v3, v2, Landroid/support/c/a/i$c;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/support/c/a/i$c;

    iget-object v4, p1, Landroid/support/c/a/i$c;->a:Landroid/graphics/Matrix;

    move-object v2, p0

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Landroid/support/c/a/i$f;->a(Landroid/support/c/a/i$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_0

    :cond_1
    instance-of v3, v2, Landroid/support/c/a/i$e;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/support/c/a/i$e;

    move/from16 v0, p4

    int-to-float v3, v0

    iget v4, p0, Landroid/support/c/a/i$f;->f:F

    div-float/2addr v3, v4

    move/from16 v0, p5

    int-to-float v4, v0

    iget v5, p0, Landroid/support/c/a/i$f;->g:F

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p1, Landroid/support/c/a/i$c;->a:Landroid/graphics/Matrix;

    iget-object v7, p0, Landroid/support/c/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v7, p0, Landroid/support/c/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x4

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->mapVectors([F)V

    const/4 v4, 0x0

    aget v4, v3, v4

    float-to-double v6, v4

    const/4 v4, 0x1

    aget v4, v3, v4

    float-to-double v10, v4

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v4, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    float-to-double v6, v6

    const/4 v8, 0x3

    aget v8, v3, v8

    float-to-double v10, v8

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    const/4 v7, 0x0

    aget v7, v3, v7

    const/4 v8, 0x1

    aget v8, v3, v8

    const/4 v10, 0x2

    aget v10, v3, v10

    const/4 v11, 0x3

    aget v3, v3, v11

    mul-float/2addr v3, v7

    mul-float v7, v8, v10

    sub-float v7, v3, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v3, 0x0

    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v4

    move v4, v3

    :goto_2
    const/4 v3, 0x0

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/c/a/i$f;->l:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/support/c/a/i$e;->a(Landroid/graphics/Path;)V

    iget-object v3, p0, Landroid/support/c/a/i$f;->l:Landroid/graphics/Path;

    iget-object v6, p0, Landroid/support/c/a/i$f;->m:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v2}, Landroid/support/c/a/i$e;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v2, p0, Landroid/support/c/a/i$f;->m:Landroid/graphics/Path;

    iget-object v4, p0, Landroid/support/c/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget-object v2, p0, Landroid/support/c/a/i$f;->m:Landroid/graphics/Path;

    invoke-virtual {p3, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto/16 :goto_1

    :cond_2
    check-cast v2, Landroid/support/c/a/i$b;

    iget v6, v2, Landroid/support/c/a/i$b;->g:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    iget v6, v2, Landroid/support/c/a/i$b;->h:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_5

    :cond_3
    iget v6, v2, Landroid/support/c/a/i$b;->g:F

    iget v7, v2, Landroid/support/c/a/i$b;->i:F

    add-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    rem-float/2addr v6, v7

    iget v7, v2, Landroid/support/c/a/i$b;->h:F

    iget v8, v2, Landroid/support/c/a/i$b;->i:F

    add-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    rem-float/2addr v7, v8

    iget-object v8, p0, Landroid/support/c/a/i$f;->p:Landroid/graphics/PathMeasure;

    if-nez v8, :cond_4

    new-instance v8, Landroid/graphics/PathMeasure;

    invoke-direct {v8}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v8, p0, Landroid/support/c/a/i$f;->p:Landroid/graphics/PathMeasure;

    :cond_4
    iget-object v8, p0, Landroid/support/c/a/i$f;->p:Landroid/graphics/PathMeasure;

    iget-object v10, p0, Landroid/support/c/a/i$f;->l:Landroid/graphics/Path;

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v8, p0, Landroid/support/c/a/i$f;->p:Landroid/graphics/PathMeasure;

    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    mul-float/2addr v6, v8

    mul-float/2addr v7, v8

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    cmpl-float v10, v6, v7

    if-lez v10, :cond_b

    iget-object v10, p0, Landroid/support/c/a/i$f;->p:Landroid/graphics/PathMeasure;

    const/4 v11, 0x1

    invoke-virtual {v10, v6, v8, v3, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v6, p0, Landroid/support/c/a/i$f;->p:Landroid/graphics/PathMeasure;

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-virtual {v6, v8, v7, v3, v10}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    :cond_5
    iget-object v6, p0, Landroid/support/c/a/i$f;->m:Landroid/graphics/Path;

    iget-object v7, p0, Landroid/support/c/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v6, v3, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget-object v3, v2, Landroid/support/c/a/i$b;->c:Landroid/support/v4/a/a/b;

    invoke-virtual {v3}, Landroid/support/v4/a/a/b;->c()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v2, Landroid/support/c/a/i$b;->c:Landroid/support/v4/a/a/b;

    iget-object v6, p0, Landroid/support/c/a/i$f;->b:Landroid/graphics/Paint;

    if-nez v6, :cond_6

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Landroid/support/c/a/i$f;->b:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/support/c/a/i$f;->b:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_6
    iget-object v6, p0, Landroid/support/c/a/i$f;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/support/v4/a/a/b;->a()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v3, v3, Landroid/support/v4/a/a/b;->a:Landroid/graphics/Shader;

    iget-object v7, p0, Landroid/support/c/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v3, v7}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v3, v2, Landroid/support/c/a/i$b;->f:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_4
    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v7, p0, Landroid/support/c/a/i$f;->m:Landroid/graphics/Path;

    iget v3, v2, Landroid/support/c/a/i$b;->e:I

    if-nez v3, :cond_d

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_5
    invoke-virtual {v7, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v3, p0, Landroid/support/c/a/i$f;->m:Landroid/graphics/Path;

    invoke-virtual {p3, v3, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    iget-object v3, v2, Landroid/support/c/a/i$b;->a:Landroid/support/v4/a/a/b;

    invoke-virtual {v3}, Landroid/support/v4/a/a/b;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/support/c/a/i$b;->a:Landroid/support/v4/a/a/b;

    iget-object v6, p0, Landroid/support/c/a/i$f;->a:Landroid/graphics/Paint;

    if-nez v6, :cond_8

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Landroid/support/c/a/i$f;->a:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/support/c/a/i$f;->a:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_8
    iget-object v6, p0, Landroid/support/c/a/i$f;->a:Landroid/graphics/Paint;

    iget-object v7, v2, Landroid/support/c/a/i$b;->k:Landroid/graphics/Paint$Join;

    if-eqz v7, :cond_9

    iget-object v7, v2, Landroid/support/c/a/i$b;->k:Landroid/graphics/Paint$Join;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :cond_9
    iget-object v7, v2, Landroid/support/c/a/i$b;->j:Landroid/graphics/Paint$Cap;

    if-eqz v7, :cond_a

    iget-object v7, v2, Landroid/support/c/a/i$b;->j:Landroid/graphics/Paint$Cap;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_a
    iget v7, v2, Landroid/support/c/a/i$b;->l:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    invoke-virtual {v3}, Landroid/support/v4/a/a/b;->a()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v3, v3, Landroid/support/v4/a/a/b;->a:Landroid/graphics/Shader;

    iget-object v7, p0, Landroid/support/c/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v3, v7}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v3, v2, Landroid/support/c/a/i$b;->d:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_6
    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    mul-float v3, v5, v4

    iget v2, v2, Landroid/support/c/a/i$b;->b:F

    mul-float/2addr v2, v3

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Landroid/support/c/a/i$f;->m:Landroid/graphics/Path;

    invoke-virtual {p3, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_b
    iget-object v8, p0, Landroid/support/c/a/i$f;->p:Landroid/graphics/PathMeasure;

    const/4 v10, 0x1

    invoke-virtual {v8, v6, v7, v3, v10}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/16 :goto_3

    :cond_c
    iget v3, v3, Landroid/support/v4/a/a/b;->b:I

    iget v7, v2, Landroid/support/c/a/i$b;->f:F

    invoke-static {v3, v7}, Landroid/support/c/a/i;->a(IF)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    :cond_d
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto/16 :goto_5

    :cond_e
    iget v3, v3, Landroid/support/v4/a/a/b;->b:I

    iget v7, v2, Landroid/support/c/a/i$b;->d:F

    invoke-static {v3, v7}, Landroid/support/c/a/i;->a(IF)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    :cond_f
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_10
    move v4, v3

    goto/16 :goto_2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;II)V
    .locals 7

    iget-object v1, p0, Landroid/support/c/a/i$f;->c:Landroid/support/c/a/i$c;

    sget-object v2, Landroid/support/c/a/i$f;->n:Landroid/graphics/Matrix;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/support/c/a/i$f;->a(Landroid/support/c/a/i$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final getAlpha()F
    .locals 2

    invoke-virtual {p0}, Landroid/support/c/a/i$f;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public final getRootAlpha()I
    .locals 1

    iget v0, p0, Landroid/support/c/a/i$f;->h:I

    return v0
.end method

.method public final setAlpha(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/support/c/a/i$f;->setRootAlpha(I)V

    return-void
.end method

.method public final setRootAlpha(I)V
    .locals 0

    iput p1, p0, Landroid/support/c/a/i$f;->h:I

    return-void
.end method
