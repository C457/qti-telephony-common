.class public final Landroid/support/design/g/c;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/support/v4/graphics/drawable/b;


# instance fields
.field public a:F

.field public b:Landroid/content/res/ColorStateList;

.field private final c:Landroid/graphics/Paint;

.field private final d:[Landroid/graphics/Matrix;

.field private final e:[Landroid/graphics/Matrix;

.field private final f:[Landroid/support/design/g/d;

.field private final g:Landroid/graphics/Matrix;

.field private final h:Landroid/graphics/Path;

.field private final i:Landroid/graphics/PointF;

.field private final j:Landroid/support/design/g/d;

.field private final k:Landroid/graphics/Region;

.field private final l:Landroid/graphics/Region;

.field private final m:[F

.field private final n:[F

.field private o:Landroid/support/design/g/e;

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:F

.field private w:F

.field private x:Landroid/graphics/Paint$Style;

.field private y:Landroid/graphics/PorterDuffColorFilter;

.field private z:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method private a(III)F
    .locals 4

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Landroid/support/design/g/c;->i:Landroid/graphics/PointF;

    invoke-static {p1, p2, p3, v1}, Landroid/support/design/g/c;->a(IIILandroid/graphics/PointF;)V

    iget-object v1, p0, Landroid/support/design/g/c;->i:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Landroid/support/design/g/c;->i:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Landroid/support/design/g/c;->i:Landroid/graphics/PointF;

    invoke-static {v0, p2, p3, v3}, Landroid/support/design/g/c;->a(IIILandroid/graphics/PointF;)V

    iget-object v0, p0, Landroid/support/design/g/c;->i:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Landroid/support/design/g/c;->i:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    sub-float v1, v3, v2

    float-to-double v2, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Landroid/support/design/g/c;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/g/c;->z:Landroid/graphics/PorterDuff$Mode;

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/g/c;->y:Landroid/graphics/PorterDuffColorFilter;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/design/g/c;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/design/g/c;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Landroid/support/design/g/c;->z:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Landroid/support/design/g/c;->y:Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v1, p0, Landroid/support/design/g/c;->q:Z

    if-eqz v1, :cond_1

    iput v0, p0, Landroid/support/design/g/c;->r:I

    goto :goto_0
.end method

.method private static a(IIILandroid/graphics/PointF;)V
    .locals 2

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p3, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    return-void

    :pswitch_0
    int-to-float v0, p1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :pswitch_1
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :pswitch_2
    int-to-float v0, p2

    invoke-virtual {p3, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(IILandroid/graphics/Path;)V
    .locals 10

    invoke-virtual {p3}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Landroid/support/design/g/c;->o:Landroid/support/design/g/e;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/design/g/c;->i:Landroid/graphics/PointF;

    invoke-static {v0, p1, p2, v1}, Landroid/support/design/g/c;->a(IIILandroid/graphics/PointF;)V

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Landroid/support/design/g/c;->i:Landroid/graphics/PointF;

    invoke-static {v1, p1, p2, v2}, Landroid/support/design/g/c;->a(IIILandroid/graphics/PointF;)V

    iget-object v1, p0, Landroid/support/design/g/c;->i:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Landroid/support/design/g/c;->i:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Landroid/support/design/g/c;->i:Landroid/graphics/PointF;

    invoke-static {v3, p1, p2, v4}, Landroid/support/design/g/c;->a(IIILandroid/graphics/PointF;)V

    iget-object v3, p0, Landroid/support/design/g/c;->i:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Landroid/support/design/g/c;->i:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Landroid/support/design/g/c;->i:Landroid/graphics/PointF;

    invoke-static {v0, p1, p2, v5}, Landroid/support/design/g/c;->a(IIILandroid/graphics/PointF;)V

    iget-object v5, p0, Landroid/support/design/g/c;->i:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Landroid/support/design/g/c;->i:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v5

    sub-float/2addr v2, v6

    sub-float/2addr v3, v5

    sub-float/2addr v4, v6

    float-to-double v6, v2

    float-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    float-to-double v4, v4

    float-to-double v2, v3

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Landroid/support/design/g/c;->o:Landroid/support/design/g/e;

    iget-object v1, v1, Landroid/support/design/g/e;->a:Landroid/support/design/g/a;

    :goto_1
    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    invoke-direct {p0, v1, p1, p2}, Landroid/support/design/g/c;->a(III)F

    move-result v1

    const v2, 0x3fc90fdb

    add-float/2addr v1, v2

    iget-object v2, p0, Landroid/support/design/g/c;->d:[Landroid/graphics/Matrix;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Landroid/support/design/g/c;->d:[Landroid/graphics/Matrix;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/support/design/g/c;->i:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Landroid/support/design/g/c;->i:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v2, p0, Landroid/support/design/g/c;->d:[Landroid/graphics/Matrix;

    aget-object v2, v2, v0

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    iget-object v1, p0, Landroid/support/design/g/c;->m:[F

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/g/c;->f:[Landroid/support/design/g/d;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/support/design/g/d;->c:F

    aput v3, v1, v2

    iget-object v1, p0, Landroid/support/design/g/c;->m:[F

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/design/g/c;->f:[Landroid/support/design/g/d;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/support/design/g/d;->d:F

    aput v3, v1, v2

    iget-object v1, p0, Landroid/support/design/g/c;->d:[Landroid/graphics/Matrix;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/support/design/g/c;->m:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-direct {p0, v0, p1, p2}, Landroid/support/design/g/c;->a(III)F

    move-result v1

    iget-object v2, p0, Landroid/support/design/g/c;->e:[Landroid/graphics/Matrix;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Landroid/support/design/g/c;->e:[Landroid/graphics/Matrix;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/support/design/g/c;->m:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Landroid/support/design/g/c;->m:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v2, p0, Landroid/support/design/g/c;->e:[Landroid/graphics/Matrix;

    aget-object v2, v2, v0

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, p0, Landroid/support/design/g/c;->o:Landroid/support/design/g/e;

    iget-object v1, v1, Landroid/support/design/g/e;->b:Landroid/support/design/g/a;

    goto/16 :goto_1

    :pswitch_1
    iget-object v1, p0, Landroid/support/design/g/c;->o:Landroid/support/design/g/e;

    iget-object v1, v1, Landroid/support/design/g/e;->c:Landroid/support/design/g/a;

    goto/16 :goto_1

    :pswitch_2
    iget-object v1, p0, Landroid/support/design/g/c;->o:Landroid/support/design/g/e;

    iget-object v1, v1, Landroid/support/design/g/e;->d:Landroid/support/design/g/a;

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v0, 0x4

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Landroid/support/design/g/c;->m:[F

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/g/c;->f:[Landroid/support/design/g/d;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/support/design/g/d;->a:F

    aput v3, v0, v2

    iget-object v0, p0, Landroid/support/design/g/c;->m:[F

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/design/g/c;->f:[Landroid/support/design/g/d;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/support/design/g/d;->b:F

    aput v3, v0, v2

    iget-object v0, p0, Landroid/support/design/g/c;->d:[Landroid/graphics/Matrix;

    aget-object v0, v0, v1

    iget-object v2, p0, Landroid/support/design/g/c;->m:[F

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez v1, :cond_1

    iget-object v0, p0, Landroid/support/design/g/c;->m:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    iget-object v2, p0, Landroid/support/design/g/c;->m:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p3, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_3
    iget-object v0, p0, Landroid/support/design/g/c;->f:[Landroid/support/design/g/d;

    aget-object v0, v0, v1

    iget-object v2, p0, Landroid/support/design/g/c;->d:[Landroid/graphics/Matrix;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2, p3}, Landroid/support/design/g/d;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v0, v1, 0x1

    rem-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Landroid/support/design/g/c;->m:[F

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/design/g/c;->f:[Landroid/support/design/g/d;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/support/design/g/d;->c:F

    aput v4, v2, v3

    iget-object v2, p0, Landroid/support/design/g/c;->m:[F

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/support/design/g/c;->f:[Landroid/support/design/g/d;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/support/design/g/d;->d:F

    aput v4, v2, v3

    iget-object v2, p0, Landroid/support/design/g/c;->d:[Landroid/graphics/Matrix;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroid/support/design/g/c;->m:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v2, p0, Landroid/support/design/g/c;->n:[F

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/design/g/c;->f:[Landroid/support/design/g/d;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/support/design/g/d;->a:F

    aput v4, v2, v3

    iget-object v2, p0, Landroid/support/design/g/c;->n:[F

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/support/design/g/c;->f:[Landroid/support/design/g/d;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/support/design/g/d;->b:F

    aput v4, v2, v3

    iget-object v2, p0, Landroid/support/design/g/c;->d:[Landroid/graphics/Matrix;

    aget-object v0, v2, v0

    iget-object v2, p0, Landroid/support/design/g/c;->n:[F

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Landroid/support/design/g/c;->m:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    iget-object v2, p0, Landroid/support/design/g/c;->n:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-double v2, v0

    iget-object v0, p0, Landroid/support/design/g/c;->m:[F

    const/4 v4, 0x1

    aget v0, v0, v4

    iget-object v4, p0, Landroid/support/design/g/c;->n:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v0, p0, Landroid/support/design/g/c;->j:Landroid/support/design/g/d;

    const/4 v3, 0x0

    iput v3, v0, Landroid/support/design/g/d;->a:F

    const/4 v3, 0x0

    iput v3, v0, Landroid/support/design/g/d;->b:F

    const/4 v3, 0x0

    iput v3, v0, Landroid/support/design/g/d;->c:F

    const/4 v3, 0x0

    iput v3, v0, Landroid/support/design/g/d;->d:F

    iget-object v0, v0, Landroid/support/design/g/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    packed-switch v1, :pswitch_data_1

    iget-object v0, p0, Landroid/support/design/g/c;->o:Landroid/support/design/g/e;

    iget-object v0, v0, Landroid/support/design/g/e;->e:Landroid/support/design/g/b;

    :goto_4
    iget v3, p0, Landroid/support/design/g/c;->a:F

    iget-object v4, p0, Landroid/support/design/g/c;->j:Landroid/support/design/g/d;

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/design/g/b;->a(FFLandroid/support/design/g/d;)V

    iget-object v0, p0, Landroid/support/design/g/c;->j:Landroid/support/design/g/d;

    iget-object v2, p0, Landroid/support/design/g/c;->e:[Landroid/graphics/Matrix;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2, p3}, Landroid/support/design/g/d;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Landroid/support/design/g/c;->m:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    iget-object v2, p0, Landroid/support/design/g/c;->m:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p3, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v0, p0, Landroid/support/design/g/c;->o:Landroid/support/design/g/e;

    iget-object v0, v0, Landroid/support/design/g/e;->f:Landroid/support/design/g/b;

    goto :goto_4

    :pswitch_4
    iget-object v0, p0, Landroid/support/design/g/c;->o:Landroid/support/design/g/e;

    iget-object v0, v0, Landroid/support/design/g/e;->g:Landroid/support/design/g/b;

    goto :goto_4

    :pswitch_5
    iget-object v0, p0, Landroid/support/design/g/c;->o:Landroid/support/design/g/e;

    iget-object v0, v0, Landroid/support/design/g/e;->h:Landroid/support/design/g/b;

    goto :goto_4

    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    :cond_3
    iget v0, p0, Landroid/support/design/g/c;->v:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    :goto_5
    return-void

    :cond_4
    iget-object v0, p0, Landroid/support/design/g/c;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Landroid/support/design/g/c;->g:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/design/g/c;->v:F

    iget v2, p0, Landroid/support/design/g/c;->v:F

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v0, p0, Landroid/support/design/g/c;->g:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/g/c;->c:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/design/g/c;->y:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Landroid/support/design/g/c;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    iget-object v0, p0, Landroid/support/design/g/c;->c:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/design/g/c;->u:I

    ushr-int/lit8 v3, v2, 0x7

    add-int/2addr v2, v3

    mul-int/2addr v2, v6

    ushr-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/design/g/c;->c:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/design/g/c;->w:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroid/support/design/g/c;->c:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/design/g/c;->x:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Landroid/support/design/g/c;->s:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/g/c;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/g/c;->c:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/design/g/c;->t:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/g/c;->s:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/design/g/c;->r:I

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    iget-object v0, p0, Landroid/support/design/g/c;->o:Landroid/support/design/g/e;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/g/c;->h:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1, v2}, Landroid/support/design/g/c;->a(IILandroid/graphics/Path;)V

    iget-object v0, p0, Landroid/support/design/g/c;->h:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/design/g/c;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    iget-object v0, p0, Landroid/support/design/g/c;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/design/g/c;->c:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    invoke-virtual {p0}, Landroid/support/design/g/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/g/c;->k:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Landroid/support/design/g/c;->h:Landroid/graphics/Path;

    invoke-direct {p0, v1, v0, v2}, Landroid/support/design/g/c;->a(IILandroid/graphics/Path;)V

    iget-object v0, p0, Landroid/support/design/g/c;->l:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/support/design/g/c;->h:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/support/design/g/c;->k:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    iget-object v0, p0, Landroid/support/design/g/c;->k:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/support/design/g/c;->l:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Landroid/support/design/g/c;->k:Landroid/graphics/Region;

    return-object v0
.end method

.method public final setAlpha(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/g/c;->u:I

    invoke-virtual {p0}, Landroid/support/design/g/c;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/g/c;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/support/design/g/c;->invalidateSelf()V

    return-void
.end method

.method public final setTint(I)V
    .locals 1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/g/c;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/g/c;->b:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/support/design/g/c;->a()V

    invoke-virtual {p0}, Landroid/support/design/g/c;->invalidateSelf()V

    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/g/c;->z:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0}, Landroid/support/design/g/c;->a()V

    invoke-virtual {p0}, Landroid/support/design/g/c;->invalidateSelf()V

    return-void
.end method
