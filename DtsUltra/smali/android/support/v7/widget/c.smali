.class final Landroid/support/v7/widget/c;
.super Landroid/support/v7/view/menu/b;

# interfaces
.implements Landroid/support/v4/h/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/c$b;,
        Landroid/support/v7/widget/c$c;,
        Landroid/support/v7/widget/c$f;,
        Landroid/support/v7/widget/c$a;,
        Landroid/support/v7/widget/c$e;,
        Landroid/support/v7/widget/c$d;
    }
.end annotation


# instance fields
.field private final A:Landroid/util/SparseBooleanArray;

.field private B:Landroid/view/View;

.field private C:Landroid/support/v7/widget/c$b;

.field i:Landroid/support/v7/widget/c$d;

.field j:Landroid/graphics/drawable/Drawable;

.field k:Z

.field l:Z

.field m:Landroid/support/v7/widget/c$e;

.field n:Landroid/support/v7/widget/c$a;

.field o:Landroid/support/v7/widget/c$c;

.field final p:Landroid/support/v7/widget/c$f;

.field q:I

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroid/support/v7/a/a$g;->abc_action_menu_layout:I

    sget v1, Landroid/support/v7/a/a$g;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/view/menu/b;-><init>(Landroid/content/Context;II)V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/c;->A:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/support/v7/widget/c$f;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/c$f;-><init>(Landroid/support/v7/widget/c;)V

    iput-object v0, p0, Landroid/support/v7/widget/c;->p:Landroid/support/v7/widget/c$f;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/h;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/h;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/p;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/c;->g:Landroid/support/v7/view/menu/p;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/h;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/h;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/p;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/c;->g:Landroid/support/v7/view/menu/p;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/p;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/c;->g:Landroid/support/v7/view/menu/p;

    invoke-super {p0, p1}, Landroid/support/v7/view/menu/b;->a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/p;

    move-result-object v1

    if-eq v0, v1, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/c;)V

    :cond_0
    return-object v1
.end method

.method public final a(Landroid/support/v7/view/menu/j;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/view/menu/j;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/j;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/menu/b;->a(Landroid/support/v7/view/menu/j;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/view/menu/j;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    check-cast p3, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-object v0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/b;->a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1}, Landroid/support/v7/view/a;->a(Landroid/content/Context;)Landroid/support/v7/view/a;

    move-result-object v3

    iget-boolean v4, p0, Landroid/support/v7/widget/c;->s:Z

    if-nez v4, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_6

    :cond_0
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/c;->r:Z

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/c;->y:Z

    if-nez v0, :cond_2

    iget-object v0, v3, Landroid/support/v7/view/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/c;->t:I

    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/widget/c;->w:Z

    if-nez v0, :cond_3

    invoke-virtual {v3}, Landroid/support/v7/view/a;->a()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/c;->v:I

    :cond_3
    iget v0, p0, Landroid/support/v7/widget/c;->t:I

    iget-boolean v3, p0, Landroid/support/v7/widget/c;->r:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/support/v7/widget/c;->i:Landroid/support/v7/widget/c$d;

    if-nez v3, :cond_5

    new-instance v3, Landroid/support/v7/widget/c$d;

    iget-object v4, p0, Landroid/support/v7/widget/c;->a:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/support/v7/widget/c$d;-><init>(Landroid/support/v7/widget/c;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v7/widget/c;->i:Landroid/support/v7/widget/c$d;

    iget-boolean v3, p0, Landroid/support/v7/widget/c;->k:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/c;->i:Landroid/support/v7/widget/c$d;

    iget-object v4, p0, Landroid/support/v7/widget/c;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/c$d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Landroid/support/v7/widget/c;->j:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Landroid/support/v7/widget/c;->k:Z

    :cond_4
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/c;->i:Landroid/support/v7/widget/c$d;

    invoke-virtual {v3, v1, v1}, Landroid/support/v7/widget/c$d;->measure(II)V

    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/c;->i:Landroid/support/v7/widget/c$d;

    invoke-virtual {v1}, Landroid/support/v7/widget/c$d;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_1
    iput v0, p0, Landroid/support/v7/widget/c;->u:I

    const/high16 v0, 0x42600000    # 56.0f

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/c;->z:I

    iput-object v6, p0, Landroid/support/v7/widget/c;->B:Landroid/view/View;

    return-void

    :cond_6
    iget-object v4, v3, Landroid/support/v7/view/a;->a:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_7
    iput-object v6, p0, Landroid/support/v7/widget/c;->i:Landroid/support/v7/widget/c$d;

    goto :goto_1
.end method

.method public final a(Landroid/support/v7/view/menu/h;Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/widget/c;->f()Z

    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/b;->a(Landroid/support/v7/view/menu/h;Z)V

    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/j;Landroid/support/v7/view/menu/p$a;)V
    .locals 1

    invoke-interface {p2, p1}, Landroid/support/v7/view/menu/p$a;->a(Landroid/support/v7/view/menu/j;)V

    iget-object v0, p0, Landroid/support/v7/widget/c;->g:Landroid/support/v7/view/menu/p;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    check-cast p2, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {p2, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setItemInvoker(Landroid/support/v7/view/menu/h$b;)V

    iget-object v0, p0, Landroid/support/v7/widget/c;->C:Landroid/support/v7/widget/c$b;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/c$b;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/c$b;-><init>(Landroid/support/v7/widget/c;)V

    iput-object v0, p0, Landroid/support/v7/widget/c;->C:Landroid/support/v7/widget/c$b;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/c;->C:Landroid/support/v7/widget/c$b;

    invoke-virtual {p2, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setPopupCallback(Landroid/support/v7/view/menu/ActionMenuItemView$b;)V

    return-void
.end method

.method public final a(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/c;->g:Landroid/support/v7/view/menu/p;

    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/view/menu/h;

    iput-object v0, p1, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/view/menu/h;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/view/menu/b;->a(Landroid/support/v7/view/menu/u;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/view/menu/h;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/view/menu/h;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/h;->i()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v2

    move-object v6, v3

    :goto_0
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/c;->v:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v7/widget/c;->u:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/c;->g:Landroid/support/v7/view/menu/p;

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    move v12, v3

    :goto_1
    if-ge v12, v5, :cond_3

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/j;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/j;->h()Z

    move-result v13

    if-eqz v13, :cond_1

    add-int/lit8 v8, v8, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/support/v7/widget/c;->l:Z

    if-eqz v13, :cond_1f

    invoke-virtual {v3}, Landroid/support/v7/view/menu/j;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x0

    :goto_3
    add-int/lit8 v9, v12, 0x1

    move v12, v9

    move v9, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    move v5, v2

    move-object v6, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/view/menu/j;->g()Z

    move-result v13

    if-eqz v13, :cond_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/widget/c;->r:Z

    if-eqz v3, :cond_5

    if-nez v4, :cond_4

    add-int v3, v8, v7

    if-le v3, v9, :cond_5

    :cond_4
    add-int/lit8 v9, v9, -0x1

    :cond_5
    sub-int v12, v9, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/c;->A:Landroid/util/SparseBooleanArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/support/v7/widget/c;->x:Z

    if-eqz v7, :cond_1e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/c;->z:I

    div-int v4, v11, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/c;->z:I

    rem-int v3, v11, v3

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/c;->z:I

    div-int/2addr v3, v4

    add-int/2addr v3, v7

    move v7, v3

    move v3, v4

    :goto_4
    const/4 v4, 0x0

    move v9, v10

    move v13, v4

    move v8, v3

    :goto_5
    if-ge v13, v5, :cond_19

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/support/v7/view/menu/j;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/j;->h()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/c;->B:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v2}, Landroid/support/v7/widget/c;->a(Landroid/support/v7/view/menu/j;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/c;->B:Landroid/view/View;

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/support/v7/widget/c;->B:Landroid/view/View;

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/widget/c;->x:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    invoke-static {v10, v7, v8, v15, v3}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v3

    sub-int v3, v8, v3

    :goto_6
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v10, v11, v8

    if-nez v9, :cond_1d

    :goto_7
    invoke-virtual {v4}, Landroid/support/v7/view/menu/j;->getGroupId()I

    move-result v9

    if-eqz v9, :cond_7

    const/4 v11, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_7
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/support/v7/view/menu/j;->c(Z)V

    move v4, v10

    move v9, v12

    :goto_8
    add-int/lit8 v10, v13, 0x1

    move v13, v10

    move v11, v4

    move v12, v9

    move v9, v8

    move v8, v3

    goto :goto_5

    :cond_8
    invoke-virtual {v10, v15, v15}, Landroid/view/View;->measure(II)V

    move v3, v8

    goto :goto_6

    :cond_9
    invoke-virtual {v4}, Landroid/support/v7/view/menu/j;->g()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v4}, Landroid/support/v7/view/menu/j;->getGroupId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v18

    if-gtz v12, :cond_a

    if-eqz v18, :cond_10

    :cond_a
    if-lez v11, :cond_10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/widget/c;->x:Z

    if-eqz v3, :cond_b

    if-lez v8, :cond_10

    :cond_b
    const/4 v3, 0x1

    :goto_9
    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/c;->B:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10, v2}, Landroid/support/v7/widget/c;->a(Landroid/support/v7/view/menu/j;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/c;->B:Landroid/view/View;

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/support/v7/widget/c;->B:Landroid/view/View;

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/support/v7/widget/c;->x:Z

    if-eqz v14, :cond_11

    const/4 v14, 0x0

    invoke-static {v10, v7, v8, v15, v14}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v14

    sub-int/2addr v8, v14

    if-nez v14, :cond_d

    const/4 v3, 0x0

    :cond_d
    :goto_a
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v11, v10

    if-nez v9, :cond_e

    move v9, v10

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/support/v7/widget/c;->x:Z

    if-eqz v10, :cond_13

    if-ltz v11, :cond_12

    const/4 v10, 0x1

    :goto_b
    and-int/2addr v3, v10

    move v14, v3

    move v10, v8

    :goto_c
    if-eqz v14, :cond_15

    if-eqz v17, :cond_15

    const/4 v3, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v3, v12

    :goto_d
    if-eqz v14, :cond_f

    add-int/lit8 v3, v3, -0x1

    :cond_f
    invoke-virtual {v4, v14}, Landroid/support/v7/view/menu/j;->c(Z)V

    move v8, v9

    move v4, v11

    move v9, v3

    move v3, v10

    goto :goto_8

    :cond_10
    const/4 v3, 0x0

    goto :goto_9

    :cond_11
    invoke-virtual {v10, v15, v15}, Landroid/view/View;->measure(II)V

    goto :goto_a

    :cond_12
    const/4 v10, 0x0

    goto :goto_b

    :cond_13
    add-int v10, v11, v9

    if-lez v10, :cond_14

    const/4 v10, 0x1

    :goto_e
    and-int/2addr v3, v10

    move v14, v3

    move v10, v8

    goto :goto_c

    :cond_14
    const/4 v10, 0x0

    goto :goto_e

    :cond_15
    if-eqz v18, :cond_1b

    const/4 v3, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v3, 0x0

    move v8, v12

    move v12, v3

    :goto_f
    if-ge v12, v13, :cond_1a

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/j;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/j;->getGroupId()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_17

    invoke-virtual {v3}, Landroid/support/v7/view/menu/j;->f()Z

    move-result v18

    if-eqz v18, :cond_16

    add-int/lit8 v8, v8, 0x1

    :cond_16
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/support/v7/view/menu/j;->c(Z)V

    :cond_17
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_f

    :cond_18
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/support/v7/view/menu/j;->c(Z)V

    move v3, v8

    move v4, v11

    move v8, v9

    move v9, v12

    goto/16 :goto_8

    :cond_19
    const/4 v2, 0x1

    return v2

    :cond_1a
    move v3, v8

    goto :goto_d

    :cond_1b
    move v3, v12

    goto :goto_d

    :cond_1c
    move v14, v3

    move v10, v8

    goto :goto_c

    :cond_1d
    move v8, v9

    goto/16 :goto_7

    :cond_1e
    move v7, v3

    move v3, v4

    goto/16 :goto_4

    :cond_1f
    move v3, v9

    goto/16 :goto_3
.end method

.method public final a(Landroid/support/v7/view/menu/j;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/support/v7/view/menu/j;->f()Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v7/view/menu/u;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/u;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p1

    :goto_1
    iget-object v1, v0, Landroid/support/v7/view/menu/u;->l:Landroid/support/v7/view/menu/h;

    iget-object v2, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/view/menu/h;

    if-eq v1, v2, :cond_2

    iget-object v0, v0, Landroid/support/v7/view/menu/u;->l:Landroid/support/v7/view/menu/h;

    check-cast v0, Landroid/support/v7/view/menu/u;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/view/menu/u;->getItem()Landroid/view/MenuItem;

    move-result-object v6

    iget-object v0, p0, Landroid/support/v7/widget/c;->g:Landroid/support/v7/view/menu/p;

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v5, v4

    :goto_2
    if-ge v5, v7, :cond_4

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v1, v2, Landroid/support/v7/view/menu/p$a;

    if-eqz v1, :cond_3

    move-object v1, v2

    check-cast v1, Landroid/support/v7/view/menu/p$a;

    invoke-interface {v1}, Landroid/support/v7/view/menu/p$a;->getItemData()Landroid/support/v7/view/menu/j;

    move-result-object v1

    if-ne v1, v6, :cond_3

    :goto_3
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/u;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/c;->q:I

    invoke-virtual {p1}, Landroid/support/v7/view/menu/u;->size()I

    move-result v1

    move v0, v4

    :goto_4
    if-ge v0, v1, :cond_7

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/u;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_5

    move v0, v3

    :goto_5
    new-instance v1, Landroid/support/v7/widget/c$a;

    iget-object v4, p0, Landroid/support/v7/widget/c;->b:Landroid/content/Context;

    invoke-direct {v1, p0, v4, p1, v2}, Landroid/support/v7/widget/c$a;-><init>(Landroid/support/v7/widget/c;Landroid/content/Context;Landroid/support/v7/view/menu/u;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/widget/c;->n:Landroid/support/v7/widget/c$a;

    iget-object v1, p0, Landroid/support/v7/widget/c;->n:Landroid/support/v7/widget/c$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/c$a;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/c;->n:Landroid/support/v7/widget/c$a;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/n;->b()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/b;->a(Landroid/support/v7/view/menu/u;)Z

    move v4, v3

    goto :goto_0

    :cond_7
    move v0, v4

    goto :goto_5
.end method

.method public final a(Landroid/view/ViewGroup;I)Z
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/c;->i:Landroid/support/v7/widget/c$d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/b;->a(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/c;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/view/a;->a(Landroid/content/Context;)Landroid/support/v7/view/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/a;->a()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/c;->v:I

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->b(Z)V

    :cond_1
    return-void
.end method

.method public final b(Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/view/menu/b;->b(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/c;->g:Landroid/support/v7/view/menu/p;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->j()V

    iget-object v4, v0, Landroid/support/v7/view/menu/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/j;

    iget-object v0, v0, Landroid/support/v7/view/menu/j;->f:Landroid/support/v4/h/c;

    if-eqz v0, :cond_0

    iput-object p0, v0, Landroid/support/v4/h/c;->a:Landroid/support/v4/h/c$a;

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->k()Ljava/util/ArrayList;

    move-result-object v0

    :goto_1
    iget-boolean v3, p0, Landroid/support/v7/widget/c;->r:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->isActionViewExpanded()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    move v2, v0

    :cond_2
    :goto_3
    if-eqz v2, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/c;->i:Landroid/support/v7/widget/c$d;

    if-nez v0, :cond_3

    new-instance v0, Landroid/support/v7/widget/c$d;

    iget-object v1, p0, Landroid/support/v7/widget/c;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/c$d;-><init>(Landroid/support/v7/widget/c;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/c;->i:Landroid/support/v7/widget/c$d;

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/c;->i:Landroid/support/v7/widget/c$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/c$d;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/widget/c;->g:Landroid/support/v7/view/menu/p;

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/c;->i:Landroid/support/v7/widget/c$d;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/c;->g:Landroid/support/v7/view/menu/p;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Landroid/support/v7/widget/c;->i:Landroid/support/v7/widget/c$d;

    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->a()Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_4
    iget-object v0, p0, Landroid/support/v7/widget/c;->g:Landroid/support/v7/view/menu/p;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v1, p0, Landroid/support/v7/widget/c;->r:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setOverflowReserved(Z)V

    return-void

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    if-lez v3, :cond_9

    :goto_5
    move v2, v1

    goto :goto_3

    :cond_9
    move v1, v2

    goto :goto_5

    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/c;->i:Landroid/support/v7/widget/c$d;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/c;->i:Landroid/support/v7/widget/c$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/c$d;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/c;->g:Landroid/support/v7/view/menu/p;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/c;->g:Landroid/support/v7/view/menu/p;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/widget/c;->i:Landroid/support/v7/widget/c$d;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/c;->r:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/c;->s:Z

    return-void
.end method

.method public final d()Z
    .locals 4

    iget-boolean v0, p0, Landroid/support/v7/widget/c;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/c;->g:Landroid/support/v7/view/menu/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/c;->o:Landroid/support/v7/widget/c$c;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->k()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/c$e;

    iget-object v1, p0, Landroid/support/v7/widget/c;->b:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/view/menu/h;

    iget-object v3, p0, Landroid/support/v7/widget/c;->i:Landroid/support/v7/widget/c$d;

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/support/v7/widget/c$e;-><init>(Landroid/support/v7/widget/c;Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;)V

    new-instance v1, Landroid/support/v7/widget/c$c;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/c$c;-><init>(Landroid/support/v7/widget/c;Landroid/support/v7/widget/c$e;)V

    iput-object v1, p0, Landroid/support/v7/widget/c;->o:Landroid/support/v7/widget/c$c;

    iget-object v0, p0, Landroid/support/v7/widget/c;->g:Landroid/support/v7/view/menu/p;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/c;->o:Landroid/support/v7/widget/c$c;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/view/menu/b;->a(Landroid/support/v7/view/menu/u;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/c;->o:Landroid/support/v7/widget/c$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/c;->g:Landroid/support/v7/view/menu/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/c;->g:Landroid/support/v7/view/menu/p;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/c;->o:Landroid/support/v7/widget/c$c;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/c;->o:Landroid/support/v7/widget/c$c;

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/c;->m:Landroid/support/v7/widget/c$e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/view/menu/n;->c()V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/c;->e()Z

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/c;->g()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/c;->n:Landroid/support/v7/widget/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/c;->n:Landroid/support/v7/widget/c$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/c$a;->c()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/c;->m:Landroid/support/v7/widget/c$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/c;->m:Landroid/support/v7/widget/c$e;

    invoke-virtual {v0}, Landroid/support/v7/widget/c$e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
