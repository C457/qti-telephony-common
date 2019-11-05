.class public final Landroid/support/design/g/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/g/d$a;,
        Landroid/support/design/g/d$b;,
        Landroid/support/design/g/d$c;
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/design/g/d$c;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(F)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/support/design/g/d$b;

    invoke-direct {v0}, Landroid/support/design/g/d$b;-><init>()V

    iput p1, v0, Landroid/support/design/g/d$b;->a:F

    iput v2, v0, Landroid/support/design/g/d$b;->b:F

    iget-object v1, p0, Landroid/support/design/g/d;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p1, p0, Landroid/support/design/g/d;->c:F

    iput v2, p0, Landroid/support/design/g/d;->d:F

    return-void
.end method

.method public final a(FFFFFF)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    new-instance v0, Landroid/support/design/g/d$a;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/design/g/d$a;-><init>(FFFF)V

    iput p5, v0, Landroid/support/design/g/d$a;->e:F

    iput p6, v0, Landroid/support/design/g/d$a;->f:F

    iget-object v1, p0, Landroid/support/design/g/d;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float v0, p1, p3

    mul-float/2addr v0, v4

    sub-float v1, p3, p1

    div-float/2addr v1, v5

    add-float v2, p5, p6

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/g/d;->c:F

    add-float v0, p2, p4

    mul-float/2addr v0, v4

    sub-float v1, p4, p2

    div-float/2addr v1, v5

    add-float v2, p5, p6

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/g/d;->d:F

    return-void
.end method

.method public final a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/g/d;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/design/g/d;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/g/d$c;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/g/d$c;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
