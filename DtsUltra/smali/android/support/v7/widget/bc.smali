.class final Landroid/support/v7/widget/bc;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/bc$a;
    }
.end annotation


# static fields
.field static b:Landroid/support/v7/widget/bc$a;

.field private static final j:D


# instance fields
.field final a:I

.field c:Landroid/graphics/Paint;

.field d:F

.field e:F

.field f:F

.field g:Landroid/content/res/ColorStateList;

.field h:Z

.field i:Z

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private final m:Landroid/graphics/RectF;

.field private n:Landroid/graphics/Path;

.field private o:F

.field private final p:I

.field private final q:I

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Landroid/support/v7/widget/bc;->j:D

    return-void
.end method

.method static a(FFZ)F
    .locals 6

    const/high16 v0, 0x3fc00000    # 1.5f

    if-eqz p2, :cond_0

    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroid/support/v7/widget/bc;->j:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    mul-float/2addr v0, p0

    goto :goto_0
.end method

.method private static a(F)I
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int v0, v0

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method static b(FFZ)F
    .locals 6

    if-eqz p2, :cond_0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroid/support/v7/widget/bc;->j:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p0, v0

    :cond_0
    return p0
.end method


# virtual methods
.method final a(FF)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid shadow size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Must be >= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid max shadow size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Must be >= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Landroid/support/v7/widget/bc;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2}, Landroid/support/v7/widget/bc;->a(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/bc;->r:Z

    if-nez v0, :cond_2

    iput-boolean v3, p0, Landroid/support/v7/widget/bc;->r:Z

    :cond_2
    move v0, v1

    :cond_3
    iget v2, p0, Landroid/support/v7/widget/bc;->f:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_4

    iget v2, p0, Landroid/support/v7/widget/bc;->e:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_4

    :goto_0
    return-void

    :cond_4
    iput v0, p0, Landroid/support/v7/widget/bc;->f:F

    iput v1, p0, Landroid/support/v7/widget/bc;->e:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/bc;->a:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/bc;->o:F

    iput-boolean v3, p0, Landroid/support/v7/widget/bc;->h:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/bc;->invalidateSelf()V

    goto :goto_0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v12, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/v7/widget/bc;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/bc;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/bc;->e:F

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/widget/bc;->m:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v7/widget/bc;->e:F

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v7, p0, Landroid/support/v7/widget/bc;->e:F

    sub-float/2addr v6, v7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Landroid/support/v7/widget/bc;->d:F

    neg-float v2, v2

    iget v3, p0, Landroid/support/v7/widget/bc;->d:F

    neg-float v3, v3

    iget v4, p0, Landroid/support/v7/widget/bc;->d:F

    iget v5, p0, Landroid/support/v7/widget/bc;->d:F

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v3, p0, Landroid/support/v7/widget/bc;->o:F

    neg-float v3, v3

    iget v4, p0, Landroid/support/v7/widget/bc;->o:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v3, p0, Landroid/support/v7/widget/bc;->n:Landroid/graphics/Path;

    if-nez v3, :cond_5

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/support/v7/widget/bc;->n:Landroid/graphics/Path;

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/bc;->n:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v3, p0, Landroid/support/v7/widget/bc;->n:Landroid/graphics/Path;

    iget v4, p0, Landroid/support/v7/widget/bc;->d:F

    neg-float v4, v4

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Landroid/support/v7/widget/bc;->n:Landroid/graphics/Path;

    iget v4, p0, Landroid/support/v7/widget/bc;->o:F

    neg-float v4, v4

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v3, p0, Landroid/support/v7/widget/bc;->n:Landroid/graphics/Path;

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v3, v2, v4, v5, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v2, p0, Landroid/support/v7/widget/bc;->n:Landroid/graphics/Path;

    const/high16 v3, 0x43870000    # 270.0f

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v0, v3, v4, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v0, p0, Landroid/support/v7/widget/bc;->n:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget v0, p0, Landroid/support/v7/widget/bc;->d:F

    iget v2, p0, Landroid/support/v7/widget/bc;->d:F

    iget v3, p0, Landroid/support/v7/widget/bc;->o:F

    add-float/2addr v2, v3

    div-float v2, v0, v2

    iget-object v7, p0, Landroid/support/v7/widget/bc;->k:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    iget v3, p0, Landroid/support/v7/widget/bc;->d:F

    iget v4, p0, Landroid/support/v7/widget/bc;->o:F

    add-float/2addr v3, v4

    new-array v4, v12, [I

    iget v5, p0, Landroid/support/v7/widget/bc;->p:I

    aput v5, v4, v9

    iget v5, p0, Landroid/support/v7/widget/bc;->p:I

    aput v5, v4, v8

    const/4 v5, 0x2

    iget v6, p0, Landroid/support/v7/widget/bc;->q:I

    aput v6, v4, v5

    new-array v5, v12, [F

    aput v1, v5, v9

    aput v2, v5, v8

    const/4 v2, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v2

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v10, p0, Landroid/support/v7/widget/bc;->l:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Landroid/support/v7/widget/bc;->d:F

    neg-float v2, v2

    iget v3, p0, Landroid/support/v7/widget/bc;->o:F

    add-float/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/bc;->d:F

    neg-float v3, v3

    iget v4, p0, Landroid/support/v7/widget/bc;->o:F

    sub-float v4, v3, v4

    new-array v5, v12, [I

    iget v3, p0, Landroid/support/v7/widget/bc;->p:I

    aput v3, v5, v9

    iget v3, p0, Landroid/support/v7/widget/bc;->p:I

    aput v3, v5, v8

    const/4 v3, 0x2

    iget v6, p0, Landroid/support/v7/widget/bc;->q:I

    aput v6, v5, v3

    new-array v6, v12, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Landroid/support/v7/widget/bc;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-boolean v9, p0, Landroid/support/v7/widget/bc;->h:Z

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/bc;->f:F

    div-float/2addr v0, v11

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Landroid/support/v7/widget/bc;->d:F

    neg-float v0, v0

    iget v2, p0, Landroid/support/v7/widget/bc;->o:F

    sub-float v2, v0, v2

    iget v0, p0, Landroid/support/v7/widget/bc;->d:F

    iget v3, p0, Landroid/support/v7/widget/bc;->a:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Landroid/support/v7/widget/bc;->f:F

    div-float/2addr v3, v11

    add-float v7, v0, v3

    iget-object v0, p0, Landroid/support/v7/widget/bc;->m:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v11, v7

    sub-float/2addr v0, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    move v6, v8

    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/bc;->m:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v11, v7

    sub-float/2addr v0, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    iget-object v0, p0, Landroid/support/v7/widget/bc;->m:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v7

    iget-object v3, p0, Landroid/support/v7/widget/bc;->m:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v7

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Landroid/support/v7/widget/bc;->n:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/v7/widget/bc;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v6, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/bc;->m:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v11, v7

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/v7/widget/bc;->d:F

    neg-float v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/bc;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    iget-object v0, p0, Landroid/support/v7/widget/bc;->m:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v7

    iget-object v3, p0, Landroid/support/v7/widget/bc;->m:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v7

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Landroid/support/v7/widget/bc;->n:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/v7/widget/bc;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v6, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/bc;->m:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v11, v7

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/v7/widget/bc;->d:F

    neg-float v0, v0

    iget v4, p0, Landroid/support/v7/widget/bc;->o:F

    add-float/2addr v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/bc;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    iget-object v0, p0, Landroid/support/v7/widget/bc;->m:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v7

    iget-object v3, p0, Landroid/support/v7/widget/bc;->m:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v7

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Landroid/support/v7/widget/bc;->n:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/v7/widget/bc;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v8, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/bc;->m:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v11, v7

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/v7/widget/bc;->d:F

    neg-float v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/bc;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    iget-object v0, p0, Landroid/support/v7/widget/bc;->m:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v7

    iget-object v3, p0, Landroid/support/v7/widget/bc;->m:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v7

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Landroid/support/v7/widget/bc;->n:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/v7/widget/bc;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v8, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/bc;->m:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v11, v7

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/v7/widget/bc;->d:F

    neg-float v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/bc;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v0, p0, Landroid/support/v7/widget/bc;->f:F

    neg-float v0, v0

    div-float/2addr v0, v11

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v0, Landroid/support/v7/widget/bc;->b:Landroid/support/v7/widget/bc$a;

    iget-object v1, p0, Landroid/support/v7/widget/bc;->m:Landroid/graphics/RectF;

    iget v2, p0, Landroid/support/v7/widget/bc;->d:F

    iget-object v3, p0, Landroid/support/v7/widget/bc;->c:Landroid/graphics/Paint;

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/support/v7/widget/bc$a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    return-void

    :cond_5
    iget-object v3, p0, Landroid/support/v7/widget/bc;->n:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0

    :cond_6
    move v6, v9

    goto/16 :goto_1

    :cond_7
    move v8, v9

    goto/16 :goto_2

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    iget v0, p0, Landroid/support/v7/widget/bc;->e:F

    iget v1, p0, Landroid/support/v7/widget/bc;->d:F

    iget-boolean v2, p0, Landroid/support/v7/widget/bc;->i:Z

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/bc;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Landroid/support/v7/widget/bc;->e:F

    iget v2, p0, Landroid/support/v7/widget/bc;->d:F

    iget-boolean v3, p0, Landroid/support/v7/widget/bc;->i:Z

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/bc;->b(FFZ)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    return v0
.end method

.method public final isStateful()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bc;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bc;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/bc;->h:Z

    return-void
.end method

.method protected final onStateChange([I)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/bc;->g:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/support/v7/widget/bc;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/bc;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/bc;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput-boolean v0, p0, Landroid/support/v7/widget/bc;->h:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/bc;->invalidateSelf()V

    goto :goto_0
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bc;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v7/widget/bc;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v7/widget/bc;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bc;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
