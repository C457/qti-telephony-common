.class public final Landroid/support/design/widget/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(FFF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p2, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public static a(FFFF)F
    .locals 5

    const/4 v3, 0x0

    invoke-static {p0, p1, v3, v3}, Landroid/support/design/widget/g;->b(FFFF)F

    move-result v0

    invoke-static {p0, p1, p2, v3}, Landroid/support/design/widget/g;->b(FFFF)F

    move-result v1

    invoke-static {p0, p1, p2, p3}, Landroid/support/design/widget/g;->b(FFFF)F

    move-result v2

    invoke-static {p0, p1, v3, p3}, Landroid/support/design/widget/g;->b(FFFF)F

    move-result v3

    cmpl-float v4, v0, v1

    if-lez v4, :cond_0

    cmpl-float v4, v0, v2

    if-lez v4, :cond_0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, v1, v2

    if-lez v0, :cond_1

    cmpl-float v0, v1, v3

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    cmpl-float v0, v2, v3

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private static b(FFFF)F
    .locals 4

    sub-float v0, p2, p0

    sub-float v1, p3, p1

    float-to-double v2, v0

    float-to-double v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
