.class public final Landroid/support/design/c/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/c/c$a;
    }
.end annotation


# static fields
.field public static final a:I


# instance fields
.field public final b:Landroid/graphics/Paint;

.field public c:Landroid/graphics/drawable/Drawable;

.field private final d:Landroid/support/design/c/c$a;

.field private final e:Landroid/view/View;

.field private final f:Landroid/graphics/Path;

.field private final g:Landroid/graphics/Paint;

.field private h:Landroid/support/design/c/d$d;

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    sput v0, Landroid/support/design/c/c;->a:I

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    sput v0, Landroid/support/design/c/c;->a:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sput v0, Landroid/support/design/c/c;->a:I

    goto :goto_0
.end method

.method private b(Landroid/support/design/c/d$d;)F
    .locals 4

    iget v0, p1, Landroid/support/design/c/d$d;->a:F

    iget v1, p1, Landroid/support/design/c/d$d;->b:F

    iget-object v2, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/support/design/widget/g;->a(FFFF)F

    move-result v0

    return v0
.end method

.method private e()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    invoke-virtual {v0}, Landroid/support/design/c/d$d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    sget v3, Landroid/support/design/c/c;->a:I

    if-nez v3, :cond_4

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/design/c/c;->j:Z

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return v2

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_1

    move v2, v1

    goto :goto_1
.end method

.method private f()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/c/c;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/c/c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget v0, Landroid/support/design/c/c;->a:I

    if-nez v0, :cond_2

    iput-boolean v6, p0, Landroid/support/design/c/c;->i:Z

    iput-boolean v5, p0, Landroid/support/design/c/c;->j:Z

    iget-object v0, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    iget-object v0, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/design/c/c;->g:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    iput-boolean v5, p0, Landroid/support/design/c/c;->i:Z

    iput-boolean v6, p0, Landroid/support/design/c/c;->j:Z

    :cond_2
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/c/c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/design/c/c;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/support/design/c/c;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported strategy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/support/design/c/c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroid/support/design/c/c;->d:Landroid/support/design/c/c$a;

    invoke-interface {v0, p1}, Landroid/support/design/c/c$a;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Landroid/support/design/c/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/design/c/c;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/support/design/c/c;->i:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/design/c/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/c/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    iget v1, v1, Landroid/support/design/c/d$d;->a:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iget-object v2, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    iget v2, v2, Landroid/support/design/c/d$d;->b:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v7

    sub-float v0, v2, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/support/design/c/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    iget-object v0, p0, Landroid/support/design/c/c;->f:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Landroid/support/design/c/c;->d:Landroid/support/design/c/c$a;

    invoke-interface {v0, p1}, Landroid/support/design/c/c$a;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Landroid/support/design/c/c;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/design/c/c;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    iget v0, v0, Landroid/support/design/c/d$d;->a:F

    iget-object v1, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    iget v1, v1, Landroid/support/design/c/d$d;->b:F

    iget-object v2, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    iget v2, v2, Landroid/support/design/c/d$d;->c:F

    iget-object v3, p0, Landroid/support/design/c/c;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-direct {p0}, Landroid/support/design/c/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    iget v0, v0, Landroid/support/design/c/d$d;->a:F

    iget-object v1, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    iget v1, v1, Landroid/support/design/c/d$d;->b:F

    iget-object v2, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    iget v2, v2, Landroid/support/design/c/d$d;->c:F

    iget-object v3, p0, Landroid/support/design/c/c;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/design/c/c;->d:Landroid/support/design/c/c$a;

    invoke-interface {v0, p1}, Landroid/support/design/c/c$a;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Landroid/support/design/c/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/design/c/c;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/c/c;->c:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final a(Landroid/support/design/c/d$d;)V
    .locals 5

    const/4 v1, 0x1

    if-nez p1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    :cond_0
    :goto_0
    sget v0, Landroid/support/design/c/c;->a:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/design/c/c;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/c/c;->f:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    iget v1, v1, Landroid/support/design/c/d$d;->a:F

    iget-object v2, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    iget v2, v2, Landroid/support/design/c/d$d;->b:F

    iget-object v3, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    iget v3, v3, Landroid/support/design/c/d$d;->c:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_1
    iget-object v0, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    if-nez v0, :cond_3

    new-instance v0, Landroid/support/design/c/d$d;

    invoke-direct {v0, p1}, Landroid/support/design/c/d$d;-><init>(Landroid/support/design/c/d$d;)V

    iput-object v0, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    :goto_1
    iget v0, p1, Landroid/support/design/c/d$d;->c:F

    invoke-direct {p0, p1}, Landroid/support/design/c/c;->b(Landroid/support/design/c/d$d;)F

    move-result v2

    const v3, 0x38d1b717    # 1.0E-4f

    add-float/2addr v0, v3

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_4

    move v0, v1

    :goto_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    iput v2, v0, Landroid/support/design/c/d$d;->c:F

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    iget v2, p1, Landroid/support/design/c/d$d;->a:F

    iget v3, p1, Landroid/support/design/c/d$d;->b:F

    iget v4, p1, Landroid/support/design/c/d$d;->c:F

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/design/c/d$d;->a(FFF)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final b()V
    .locals 2

    sget v0, Landroid/support/design/c/c;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/c/c;->j:Z

    iget-object v0, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    iget-object v0, p0, Landroid/support/design/c/c;->g:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Landroid/support/design/c/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final c()Landroid/support/design/c/d$d;
    .locals 2

    iget-object v0, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/support/design/c/d$d;

    iget-object v1, p0, Landroid/support/design/c/c;->h:Landroid/support/design/c/d$d;

    invoke-direct {v0, v1}, Landroid/support/design/c/d$d;-><init>(Landroid/support/design/c/d$d;)V

    invoke-virtual {v0}, Landroid/support/design/c/d$d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Landroid/support/design/c/c;->b(Landroid/support/design/c/d$d;)F

    move-result v1

    iput v1, v0, Landroid/support/design/c/d$d;->c:F

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/c/c;->d:Landroid/support/design/c/c$a;

    invoke-interface {v0}, Landroid/support/design/c/c$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/design/c/c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
