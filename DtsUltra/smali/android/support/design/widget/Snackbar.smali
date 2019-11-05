.class public final Landroid/support/design/widget/Snackbar;
.super Landroid/support/design/widget/BaseTransientBottomBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/Snackbar$SnackbarLayout;,
        Landroid/support/design/widget/Snackbar$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/BaseTransientBottomBar",
        "<",
        "Landroid/support/design/widget/Snackbar;",
        ">;"
    }
.end annotation


# static fields
.field private static final h:[I


# instance fields
.field private final f:Landroid/view/accessibility/AccessibilityManager;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/design/a$b;->snackbarButtonStyle:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/widget/Snackbar;->h:[I

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/h/a;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/h/a;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/design/widget/Snackbar;->f:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;
    .locals 6

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    move-object v1, v2

    move-object v0, p0

    :cond_0
    instance-of v4, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v4, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v4, v0, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v4, 0x1020002

    if-ne v1, v4, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_5

    check-cast v0, Landroid/view/View;

    :cond_4
    :goto_1
    if-nez v0, :cond_0

    goto :goto_0

    :cond_5
    move-object v0, v2

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v4, Landroid/support/design/widget/Snackbar;->h:[I

    invoke-virtual {v0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v4, v5, :cond_7

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_8

    sget v0, Landroid/support/design/a$g;->mtrl_layout_snackbar_include:I

    :goto_3
    invoke-virtual {v2, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/SnackbarContentLayout;

    new-instance v2, Landroid/support/design/widget/Snackbar;

    invoke-direct {v2, v1, v0, v0}, Landroid/support/design/widget/Snackbar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/h/a;)V

    iget-object v0, v2, Landroid/support/design/widget/Snackbar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/BaseTransientBottomBar$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/SnackbarContentLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput p2, v2, Landroid/support/design/widget/BaseTransientBottomBar;->c:I

    return-object v2

    :cond_7
    move v0, v3

    goto :goto_2

    :cond_8
    sget v0, Landroid/support/design/a$g;->design_layout_snackbar_include:I

    goto :goto_3
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/Snackbar;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->f:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    invoke-super {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->b()V

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-super {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->c()V

    return-void
.end method
