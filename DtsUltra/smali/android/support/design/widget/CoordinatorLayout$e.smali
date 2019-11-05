.class public final Landroid/support/design/widget/CoordinatorLayout$e;
.super Landroid/view/ViewGroup$MarginLayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:Landroid/support/design/widget/CoordinatorLayout$b;

.field b:Z

.field public c:I

.field public d:I

.field public e:I

.field f:I

.field public g:I

.field public h:I

.field i:I

.field j:I

.field k:Landroid/view/View;

.field l:Landroid/view/View;

.field m:Z

.field n:Z

.field final o:Landroid/graphics/Rect;

.field p:Ljava/lang/Object;

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, -0x2

    const/4 v0, 0x0

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->b:Z

    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->c:I

    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->d:I

    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$e;->e:I

    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$e;->f:I

    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:I

    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->h:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->o:Landroid/graphics/Rect;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Landroid/support/design/widget/CoordinatorLayout$e;->b:Z

    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$e;->c:I

    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$e;->d:I

    iput v3, p0, Landroid/support/design/widget/CoordinatorLayout$e;->e:I

    iput v3, p0, Landroid/support/design/widget/CoordinatorLayout$e;->f:I

    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:I

    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$e;->h:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->o:Landroid/graphics/Rect;

    sget-object v0, Landroid/support/b/a$c;->CoordinatorLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/b/a$c;->CoordinatorLayout_Layout_android_layout_gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->c:I

    sget v1, Landroid/support/b/a$c;->CoordinatorLayout_Layout_layout_anchor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->f:I

    sget v1, Landroid/support/b/a$c;->CoordinatorLayout_Layout_layout_anchorGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->d:I

    sget v1, Landroid/support/b/a$c;->CoordinatorLayout_Layout_layout_keyline:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->e:I

    sget v1, Landroid/support/b/a$c;->CoordinatorLayout_Layout_layout_insetEdge:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:I

    sget v1, Landroid/support/b/a$c;->CoordinatorLayout_Layout_layout_dodgeInsetEdges:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->h:I

    sget v1, Landroid/support/b/a$c;->CoordinatorLayout_Layout_layout_behavior:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->b:Z

    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->b:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/support/b/a$c;->CoordinatorLayout_Layout_layout_behavior:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->a:Landroid/support/design/widget/CoordinatorLayout$b;

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->a:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->a:Landroid/support/design/widget/CoordinatorLayout$b;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout$e;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/support/design/widget/CoordinatorLayout$e;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->b:Z

    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->c:I

    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->d:I

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->e:I

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->f:I

    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:I

    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->h:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->o:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->b:Z

    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->c:I

    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->d:I

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->e:I

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->f:I

    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:I

    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->h:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->o:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->b:Z

    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->c:I

    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->d:I

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->e:I

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->f:I

    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:I

    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->h:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->o:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method final a(IZ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-boolean p2, p0, Landroid/support/design/widget/CoordinatorLayout$e;->q:Z

    goto :goto_0

    :pswitch_1
    iput-boolean p2, p0, Landroid/support/design/widget/CoordinatorLayout$e;->r:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/support/design/widget/CoordinatorLayout$b;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->a:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->a:Landroid/support/design/widget/CoordinatorLayout$b;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->p:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->b:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout$e;)V

    :cond_0
    return-void
.end method

.method final a(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->q:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->r:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
