.class Landroid/support/v7/widget/an;
.super Landroid/widget/ListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/an$b;,
        Landroid/support/v7/widget/an$a;
    }
.end annotation


# instance fields
.field a:Landroid/support/v7/widget/an$b;

.field private final b:Landroid/graphics/Rect;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/reflect/Field;

.field private i:Landroid/support/v7/widget/an$a;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroid/support/v4/h/v;

.field private n:Landroid/support/v4/widget/h;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    sget v1, Landroid/support/v7/a/a$a;->dropDownListViewStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/an;->b:Landroid/graphics/Rect;

    iput v2, p0, Landroid/support/v7/widget/an;->c:I

    iput v2, p0, Landroid/support/v7/widget/an;->d:I

    iput v2, p0, Landroid/support/v7/widget/an;->e:I

    iput v2, p0, Landroid/support/v7/widget/an;->f:I

    iput-boolean p2, p0, Landroid/support/v7/widget/an;->k:Z

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/an;->setCacheColorHint(I)V

    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mIsChildViewEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/an;->h:Ljava/lang/reflect/Field;

    iget-object v0, p0, Landroid/support/v7/widget/an;->h:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/an;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method private setSelectorEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/an;->i:Landroid/support/v7/widget/an$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/an;->i:Landroid/support/v7/widget/an$a;

    iput-boolean p1, v0, Landroid/support/v7/widget/an$a;->a:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IIIII)I
    .locals 12

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->getListPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->getListPaddingBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->getListPaddingLeft()I

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->getListPaddingRight()I

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->getDividerHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    if-nez v8, :cond_1

    add-int v4, v2, v3

    :cond_0
    :goto_0
    return v4

    :cond_1
    add-int/2addr v3, v2

    if-lez v1, :cond_4

    if-eqz v4, :cond_4

    :goto_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    const/4 v2, 0x0

    move v7, v2

    :goto_2
    if-ge v7, v9, :cond_7

    invoke-interface {v8, v7}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    if-eq v2, v5, :cond_8

    const/4 v5, 0x0

    move v11, v2

    move-object v2, v5

    move v5, v11

    :goto_3
    invoke-interface {v8, v7, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v10, :cond_5

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_4
    invoke-virtual {v6, p1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    if-lez v7, :cond_a

    add-int v2, v3, v1

    :goto_5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    move/from16 v0, p4

    if-lt v3, v0, :cond_6

    if-ltz p5, :cond_3

    move/from16 v0, p5

    if-le v7, v0, :cond_3

    if-lez v4, :cond_3

    move/from16 v0, p4

    if-ne v3, v0, :cond_0

    :cond_3
    move/from16 v4, p4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_4

    :cond_6
    if-ltz p5, :cond_9

    move/from16 v0, p5

    if-lt v7, v0, :cond_9

    move v2, v3

    :goto_6
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v4, v2

    goto :goto_2

    :cond_7
    move v4, v3

    goto :goto_0

    :cond_8
    move-object v2, v6

    goto :goto_3

    :cond_9
    move v2, v4

    goto :goto_6

    :cond_a
    move v2, v3

    goto :goto_5
.end method

.method public a(Landroid/view/MotionEvent;I)Z
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    move v13, v1

    move v1, v0

    move v0, v13

    :goto_1
    if-eqz v1, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/an;->l:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/an;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->drawableStateChanged()V

    iget v0, p0, Landroid/support/v7/widget/an;->g:I

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/an;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/an;->m:Landroid/support/v4/h/v;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/an;->m:Landroid/support/v4/h/v;

    invoke-virtual {v0}, Landroid/support/v4/h/v;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/an;->m:Landroid/support/v4/h/v;

    :cond_3
    if-eqz v1, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/an;->n:Landroid/support/v4/widget/h;

    if-nez v0, :cond_4

    new-instance v0, Landroid/support/v4/widget/h;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/h;-><init>(Landroid/widget/ListView;)V

    iput-object v0, p0, Landroid/support/v7/widget/an;->n:Landroid/support/v4/widget/h;

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/an;->n:Landroid/support/v4/widget/h;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/h;->a(Z)Landroid/support/v4/widget/a;

    iget-object v0, p0, Landroid/support/v7/widget/an;->n:Landroid/support/v4/widget/h;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/h;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_5
    :goto_2
    return v1

    :pswitch_0
    const/4 v0, 0x0

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x0

    :pswitch_2
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_6

    const/4 v0, 0x0

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v4, v2}, Landroid/support/v7/widget/an;->pointToPosition(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_7

    const/4 v1, 0x1

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/an;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v5, v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/an;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    int-to-float v4, v4

    int-to-float v7, v2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/an;->l:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_8

    invoke-virtual {p0, v4, v7}, Landroid/support/v7/widget/an;->drawableHotspotChanged(FF)V

    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/an;->isPressed()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/an;->setPressed(Z)V

    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/an;->layoutChildren()V

    iget v0, p0, Landroid/support/v7/widget/an;->g:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    iget v0, p0, Landroid/support/v7/widget/an;->g:I

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/an;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    if-eq v0, v6, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_a
    iput v5, p0, Landroid/support/v7/widget/an;->g:I

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v4, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v7, v2

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_b

    invoke-virtual {v6, v0, v2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    :cond_b
    invoke-virtual {v6}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/an;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_11

    const/4 v0, -0x1

    if-eq v5, v0, :cond_11

    const/4 v0, 0x1

    move v2, v0

    :goto_3
    if-eqz v2, :cond_d

    const/4 v0, 0x0

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/an;->b:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v10, p0, Landroid/support/v7/widget/an;->c:I

    sub-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    iget v10, p0, Landroid/support/v7/widget/an;->d:I

    sub-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v10, p0, Landroid/support/v7/widget/an;->e:I

    add-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget v10, p0, Landroid/support/v7/widget/an;->f:I

    add-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/an;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-eq v9, v0, :cond_e

    iget-object v9, p0, Landroid/support/v7/widget/an;->h:Ljava/lang/reflect/Field;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-eq v5, v0, :cond_e

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    :goto_5
    if-eqz v2, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/an;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_6
    const/4 v10, 0x0

    invoke-virtual {v8, v0, v10}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    invoke-static {v8, v2, v9}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_f
    invoke-virtual {p0}, Landroid/support/v7/widget/an;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v2, -0x1

    if-eq v5, v2, :cond_10

    invoke-static {v0, v4, v7}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/an;->setSelectorEnabled(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->refreshDrawableState()V

    const/4 v0, 0x1

    const/4 v2, 0x1

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/an;->getItemIdAtPosition(I)J

    move-result-wide v2

    invoke-virtual {p0, v6, v5, v2, v3}, Landroid/support/v7/widget/an;->performItemClick(Landroid/view/View;IJ)Z

    goto/16 :goto_0

    :cond_11
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_3

    :cond_12
    const/4 v0, 0x0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_5

    :cond_13
    const/4 v0, 0x0

    goto :goto_6

    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/an;->n:Landroid/support/v4/widget/h;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/an;->n:Landroid/support/v4/widget/h;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/h;->a(Z)Landroid/support/v4/widget/a;

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/an;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/an;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/an;->a:Landroid/support/v7/widget/an$b;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/an;->setSelectorEnabled(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/an;->a()V

    goto :goto_0
.end method

.method public hasFocus()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/an;->k:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/an;->k:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/an;->k:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/an;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/an;->j:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

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

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/an;->a:Landroid/support/v7/widget/an$b;

    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, -0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v0, 0xa

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/an;->a:Landroid/support/v7/widget/an$b;

    if-nez v0, :cond_2

    new-instance v0, Landroid/support/v7/widget/an$b;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/an$b;-><init>(Landroid/support/v7/widget/an;)V

    iput-object v0, p0, Landroid/support/v7/widget/an;->a:Landroid/support/v7/widget/an$b;

    iget-object v0, p0, Landroid/support/v7/widget/an;->a:Landroid/support/v7/widget/an$b;

    iget-object v2, v0, Landroid/support/v7/widget/an$b;->a:Landroid/support/v7/widget/an;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/an;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/an;->pointToPosition(II)I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->getSelectedItemPosition()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/an;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/an;->setSelectionFromTop(II)V

    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/an;->a()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/an;->setSelection(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/an;->a:Landroid/support/v7/widget/an$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/an;->a:Landroid/support/v7/widget/an$b;

    iget-object v1, v0, Landroid/support/v7/widget/an$b;->a:Landroid/support/v7/widget/an;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/an;->a:Landroid/support/v7/widget/an$b;

    iget-object v1, v0, Landroid/support/v7/widget/an$b;->a:Landroid/support/v7/widget/an;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/an;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/an;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/an;->g:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method setListSelectionHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/an;->j:Z

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_1

    new-instance v0, Landroid/support/v7/widget/an$a;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/an$a;-><init>(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iput-object v0, p0, Landroid/support/v7/widget/an;->i:Landroid/support/v7/widget/an$a;

    iget-object v0, p0, Landroid/support/v7/widget/an;->i:Landroid/support/v7/widget/an$a;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/support/v7/widget/an;->c:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/support/v7/widget/an;->d:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/support/v7/widget/an;->e:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/support/v7/widget/an;->f:I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
