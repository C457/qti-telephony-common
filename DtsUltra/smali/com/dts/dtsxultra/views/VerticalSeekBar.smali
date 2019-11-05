.class public Lcom/dts/dtsxultra/views/VerticalSeekBar;
.super Landroid/support/v7/widget/w;


# instance fields
.field private a:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/w;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(IIF)I
    .locals 2

    int-to-float v0, p2

    div-float v0, p3, v0

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    const v1, 0x3f851eb8    # 1.04f

    mul-float/2addr v0, v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int v0, p1, v0

    if-le v0, p1, :cond_2

    :goto_1
    return p1

    :cond_1
    const/high16 v1, 0x3e800000    # 0.25f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const v1, 0x3ca3d70a    # 0.02f

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_2
    if-gez v0, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    move p1, v0

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/support/v7/widget/w;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/support/v7/widget/w;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p2, p1, p4, p3}, Landroid/support/v7/widget/w;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->getMax()I

    move-result v2

    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->a(IIF)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/dts/dtsxultra/views/VerticalSeekBar;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/VerticalSeekBar;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->getMax()I

    move-result v2

    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->a(IIF)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4, v0, v0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/dts/dtsxultra/views/VerticalSeekBar;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/VerticalSeekBar;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0, v2, v1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->getMax()I

    move-result v2

    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->a(IIF)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/dts/dtsxultra/views/VerticalSeekBar;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/VerticalSeekBar;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/views/VerticalSeekBar;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-super {p0, p1}, Landroid/support/v7/widget/w;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/widget/w;->setProgress(I)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->onSizeChanged(IIII)V

    return-void
.end method
