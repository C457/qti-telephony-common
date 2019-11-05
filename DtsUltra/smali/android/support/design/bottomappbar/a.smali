.class public final Landroid/support/design/bottomappbar/a;
.super Landroid/support/design/g/b;


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:F


# virtual methods
.method public final a(FFLandroid/support/design/g/d;)V
    .locals 18

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/design/bottomappbar/a;->c:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/design/g/d;->a(F)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/design/bottomappbar/a;->b:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/bottomappbar/a;->c:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v9, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/design/bottomappbar/a;->a:F

    mul-float v16, p2, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/bottomappbar/a;->e:F

    add-float v12, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/design/bottomappbar/a;->d:F

    mul-float v2, v2, p2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, p2

    mul-float/2addr v3, v9

    add-float v13, v2, v3

    div-float v2, v13, v9

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/design/g/d;->a(F)V

    goto :goto_0

    :cond_1
    add-float v2, v9, v16

    mul-float/2addr v2, v2

    add-float v3, v13, v16

    mul-float v4, v3, v3

    sub-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    sub-float v5, v12, v2

    add-float v17, v12, v2

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v8, v2

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v15, v2, v8

    sub-float v2, v5, v16

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/design/g/d;->a(F)V

    sub-float v3, v5, v16

    const/4 v4, 0x0

    add-float v5, v5, v16

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v6, v16, v2

    const/high16 v7, 0x43870000    # 270.0f

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v8}, Landroid/support/design/g/d;->a(FFFFFF)V

    sub-float v10, v12, v9

    neg-float v2, v9

    sub-float v11, v2, v13

    add-float/2addr v12, v9

    sub-float v13, v9, v13

    const/high16 v2, 0x43340000    # 180.0f

    sub-float v14, v2, v15

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v15

    const/high16 v3, 0x43340000    # 180.0f

    sub-float v15, v2, v3

    move-object/from16 v9, p3

    invoke-virtual/range {v9 .. v15}, Landroid/support/design/g/d;->a(FFFFFF)V

    sub-float v3, v17, v16

    const/4 v4, 0x0

    add-float v5, v17, v16

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v6, v16, v2

    const/high16 v2, 0x43870000    # 270.0f

    sub-float v7, v2, v8

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v8}, Landroid/support/design/g/d;->a(FFFFFF)V

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/design/g/d;->a(F)V

    goto/16 :goto_0
.end method
