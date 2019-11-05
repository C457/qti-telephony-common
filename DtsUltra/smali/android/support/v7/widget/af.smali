.class Landroid/support/v7/widget/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/ah;


# instance fields
.field final a:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/af;->a:Landroid/graphics/RectF;

    return-void
.end method

.method private i(Landroid/support/v7/widget/ag;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1}, Landroid/support/v7/widget/af;->j(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bc;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bc;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/af;->b(Landroid/support/v7/widget/ag;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/af;->c(Landroid/support/v7/widget/ag;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private static j(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bc;
    .locals 1

    invoke-interface {p0}, Landroid/support/v7/widget/ag;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bc;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/ag;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/af;->j(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bc;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/bc;->e:F

    return v0
.end method

.method public a()V
    .locals 1

    new-instance v0, Landroid/support/v7/widget/af$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/af$1;-><init>(Landroid/support/v7/widget/af;)V

    sput-object v0, Landroid/support/v7/widget/bc;->b:Landroid/support/v7/widget/bc$a;

    return-void
.end method

.method public final a(Landroid/support/v7/widget/ag;F)V
    .locals 3

    invoke-static {p1}, Landroid/support/v7/widget/af;->j(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bc;

    move-result-object v0

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid radius "

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

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v1, p2

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, v0, Landroid/support/v7/widget/bc;->d:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1

    iput v1, v0, Landroid/support/v7/widget/bc;->d:F

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/bc;->h:Z

    invoke-virtual {v0}, Landroid/support/v7/widget/bc;->invalidateSelf()V

    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/af;->i(Landroid/support/v7/widget/ag;)V

    return-void
.end method

.method public final a(Landroid/support/v7/widget/ag;Landroid/content/res/ColorStateList;)V
    .locals 5

    invoke-static {p1}, Landroid/support/v7/widget/af;->j(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bc;

    move-result-object v0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :cond_0
    iput-object p2, v0, Landroid/support/v7/widget/bc;->g:Landroid/content/res/ColorStateList;

    iget-object v1, v0, Landroid/support/v7/widget/bc;->c:Landroid/graphics/Paint;

    iget-object v2, v0, Landroid/support/v7/widget/bc;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/support/v7/widget/bc;->getState()[I

    move-result-object v3

    iget-object v4, v0, Landroid/support/v7/widget/bc;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/support/v7/widget/bc;->invalidateSelf()V

    return-void
.end method

.method public final b(Landroid/support/v7/widget/ag;)F
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/support/v7/widget/af;->j(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bc;

    move-result-object v0

    iget v1, v0, Landroid/support/v7/widget/bc;->e:F

    iget v2, v0, Landroid/support/v7/widget/bc;->d:F

    iget v3, v0, Landroid/support/v7/widget/bc;->a:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/bc;->e:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v4

    iget v2, v0, Landroid/support/v7/widget/bc;->e:F

    iget v0, v0, Landroid/support/v7/widget/bc;->a:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    return v0
.end method

.method public final b(Landroid/support/v7/widget/ag;F)V
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/af;->j(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bc;

    move-result-object v0

    iget v1, v0, Landroid/support/v7/widget/bc;->f:F

    invoke-virtual {v0, v1, p2}, Landroid/support/v7/widget/bc;->a(FF)V

    invoke-direct {p0, p1}, Landroid/support/v7/widget/af;->i(Landroid/support/v7/widget/ag;)V

    return-void
.end method

.method public final c(Landroid/support/v7/widget/ag;)F
    .locals 6

    const/high16 v5, 0x3fc00000    # 1.5f

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/support/v7/widget/af;->j(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bc;

    move-result-object v0

    iget v1, v0, Landroid/support/v7/widget/bc;->e:F

    iget v2, v0, Landroid/support/v7/widget/bc;->d:F

    iget v3, v0, Landroid/support/v7/widget/bc;->a:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/bc;->e:F

    mul-float/2addr v3, v5

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v4

    iget v2, v0, Landroid/support/v7/widget/bc;->e:F

    mul-float/2addr v2, v5

    iget v0, v0, Landroid/support/v7/widget/bc;->a:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    return v0
.end method

.method public final c(Landroid/support/v7/widget/ag;F)V
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/af;->j(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bc;

    move-result-object v0

    iget v1, v0, Landroid/support/v7/widget/bc;->e:F

    invoke-virtual {v0, p2, v1}, Landroid/support/v7/widget/bc;->a(FF)V

    return-void
.end method

.method public final d(Landroid/support/v7/widget/ag;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/af;->j(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bc;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/bc;->d:F

    return v0
.end method

.method public final e(Landroid/support/v7/widget/ag;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/af;->j(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bc;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/bc;->f:F

    return v0
.end method

.method public final f(Landroid/support/v7/widget/ag;)V
    .locals 0

    return-void
.end method

.method public final g(Landroid/support/v7/widget/ag;)V
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/af;->j(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bc;

    move-result-object v0

    invoke-interface {p1}, Landroid/support/v7/widget/ag;->c()Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/widget/bc;->i:Z

    invoke-virtual {v0}, Landroid/support/v7/widget/bc;->invalidateSelf()V

    invoke-direct {p0, p1}, Landroid/support/v7/widget/af;->i(Landroid/support/v7/widget/ag;)V

    return-void
.end method

.method public final h(Landroid/support/v7/widget/ag;)Landroid/content/res/ColorStateList;
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/af;->j(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bc;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/bc;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method
