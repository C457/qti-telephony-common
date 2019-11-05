.class public Landroid/support/design/transformation/FabTransformationSheetBehavior;
.super Landroid/support/design/transformation/FabTransformationBehavior;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/design/transformation/FabTransformationBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/design/transformation/FabTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Z)Landroid/support/design/transformation/FabTransformationBehavior$a;
    .locals 2

    if-eqz p2, :cond_0

    sget v0, Landroid/support/design/a$a;->mtrl_fab_transformation_sheet_expand_spec:I

    :goto_0
    new-instance v1, Landroid/support/design/transformation/FabTransformationBehavior$a;

    invoke-direct {v1}, Landroid/support/design/transformation/FabTransformationBehavior$a;-><init>()V

    invoke-static {p1, v0}, Landroid/support/design/a/h;->a(Landroid/content/Context;I)Landroid/support/design/a/h;

    move-result-object v0

    iput-object v0, v1, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    new-instance v0, Landroid/support/design/a/j;

    invoke-direct {v0}, Landroid/support/design/a/j;-><init>()V

    iput-object v0, v1, Landroid/support/design/transformation/FabTransformationBehavior$a;->b:Landroid/support/design/a/j;

    return-object v1

    :cond_0
    sget v0, Landroid/support/design/a$a;->mtrl_fab_transformation_sheet_collapse_spec:I

    goto :goto_0
.end method

.method protected final a(Landroid/view/View;Landroid/view/View;ZZ)Z
    .locals 8

    const/16 v7, 0x10

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v1, :cond_6

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_0

    if-eqz p3, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->a:Ljava/util/Map;

    :cond_0
    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_5

    invoke-virtual {v0, v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/support/design/widget/CoordinatorLayout$e;

    if-eqz v1, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout$e;->a:Landroid/support/design/widget/CoordinatorLayout$b;

    instance-of v1, v1, Landroid/support/design/transformation/FabTransformationScrimBehavior;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-eq v5, p2, :cond_1

    if-nez v1, :cond_1

    if-nez p3, :cond_3

    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->a:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->a:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->a:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v1}, Landroid/support/v4/h/r;->a(Landroid/view/View;I)V

    :cond_1
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_4

    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->a:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v1, 0x4

    invoke-static {v5, v1}, Landroid/support/v4/h/r;->a(Landroid/view/View;I)V

    goto :goto_2

    :cond_5
    if-nez p3, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->a:Ljava/util/Map;

    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;ZZ)Z

    move-result v0

    return v0
.end method
