.class public Landroid/support/v7/widget/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/au$c;,
        Landroid/support/v7/widget/au$d;,
        Landroid/support/v7/widget/au$e;,
        Landroid/support/v7/widget/au$a;,
        Landroid/support/v7/widget/au$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;


# instance fields
.field private A:Z

.field private B:Landroid/view/View;

.field private C:Landroid/database/DataSetObserver;

.field private D:Landroid/graphics/drawable/Drawable;

.field private E:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final F:Landroid/support/v7/widget/au$d;

.field private final G:Landroid/support/v7/widget/au$c;

.field private final H:Landroid/support/v7/widget/au$a;

.field private I:Ljava/lang/Runnable;

.field private final J:Landroid/graphics/Rect;

.field private d:Landroid/content/Context;

.field public e:Landroid/support/v7/widget/an;

.field f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:I

.field k:I

.field l:I

.field public m:Landroid/view/View;

.field public n:Landroid/widget/AdapterView$OnItemClickListener;

.field final o:Landroid/support/v7/widget/au$e;

.field final p:Landroid/os/Handler;

.field public q:Landroid/graphics/Rect;

.field public r:Z

.field public s:Landroid/widget/PopupWindow;

.field private t:Landroid/widget/ListAdapter;

.field private u:I

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setClipToScreenEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/au;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "getMaxAvailableHeight"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/au;->b:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setEpicenterBounds"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/au;->c:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v0, "ListPopupWindow"

    const-string v1, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "ListPopupWindow"

    const-string v1, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v0, "ListPopupWindow"

    const-string v1, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    sget v1, Landroid/support/v7/a/a$a;->listPopupWindowStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/au;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/au;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v0, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v7/widget/au;->u:I

    iput v0, p0, Landroid/support/v7/widget/au;->f:I

    const/16 v0, 0x3ea

    iput v0, p0, Landroid/support/v7/widget/au;->w:I

    iput-boolean v3, p0, Landroid/support/v7/widget/au;->y:Z

    iput v2, p0, Landroid/support/v7/widget/au;->j:I

    iput-boolean v2, p0, Landroid/support/v7/widget/au;->z:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/au;->A:Z

    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/widget/au;->k:I

    iput v2, p0, Landroid/support/v7/widget/au;->l:I

    new-instance v0, Landroid/support/v7/widget/au$e;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/au$e;-><init>(Landroid/support/v7/widget/au;)V

    iput-object v0, p0, Landroid/support/v7/widget/au;->o:Landroid/support/v7/widget/au$e;

    new-instance v0, Landroid/support/v7/widget/au$d;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/au$d;-><init>(Landroid/support/v7/widget/au;)V

    iput-object v0, p0, Landroid/support/v7/widget/au;->F:Landroid/support/v7/widget/au$d;

    new-instance v0, Landroid/support/v7/widget/au$c;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/au$c;-><init>(Landroid/support/v7/widget/au;)V

    iput-object v0, p0, Landroid/support/v7/widget/au;->G:Landroid/support/v7/widget/au$c;

    new-instance v0, Landroid/support/v7/widget/au$a;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/au$a;-><init>(Landroid/support/v7/widget/au;)V

    iput-object v0, p0, Landroid/support/v7/widget/au;->H:Landroid/support/v7/widget/au$a;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/au;->J:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/v7/widget/au;->d:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v7/widget/au;->p:Landroid/os/Handler;

    sget-object v0, Landroid/support/v7/a/a$j;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$j;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/au;->g:I

    sget v1, Landroid/support/v7/a/a$j;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/au;->v:I

    iget v1, p0, Landroid/support/v7/widget/au;->v:I

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Landroid/support/v7/widget/au;->x:Z

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/support/v7/widget/s;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method private a(Landroid/view/View;IZ)I
    .locals 5

    sget-object v0, Landroid/support/v7/widget/au;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/support/v7/widget/au;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "ListPopupWindow"

    const-string v1, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Context;Z)Landroid/support/v7/widget/an;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/an;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/an;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iput p1, p0, Landroid/support/v7/widget/au;->v:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/au;->x:Z

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/au;->C:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    new-instance v0, Landroid/support/v7/widget/au$b;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/au$b;-><init>(Landroid/support/v7/widget/au;)V

    iput-object v0, p0, Landroid/support/v7/widget/au;->C:Landroid/database/DataSetObserver;

    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/support/v7/widget/au;->t:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/au;->C:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    iget-object v1, p0, Landroid/support/v7/widget/au;->t:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/an;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/au;->t:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/au;->t:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/support/v7/widget/au;->C:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public b()V
    .locals 11

    const/high16 v1, -0x80000000

    const/4 v10, -0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    if-nez v0, :cond_6

    iget-object v4, p0, Landroid/support/v7/widget/au;->d:Landroid/content/Context;

    new-instance v0, Landroid/support/v7/widget/au$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/au$1;-><init>(Landroid/support/v7/widget/au;)V

    iput-object v0, p0, Landroid/support/v7/widget/au;->I:Ljava/lang/Runnable;

    iget-boolean v0, p0, Landroid/support/v7/widget/au;->r:Z

    if-nez v0, :cond_4

    move v0, v6

    :goto_0
    invoke-virtual {p0, v4, v0}, Landroid/support/v7/widget/au;->a(Landroid/content/Context;Z)Landroid/support/v7/widget/an;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    iget-object v0, p0, Landroid/support/v7/widget/au;->D:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    iget-object v5, p0, Landroid/support/v7/widget/au;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/an;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    iget-object v5, p0, Landroid/support/v7/widget/au;->t:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/an;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    iget-object v5, p0, Landroid/support/v7/widget/au;->n:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/an;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/an;->setFocusable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/an;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    new-instance v5, Landroid/support/v7/widget/au$2;

    invoke-direct {v5, p0}, Landroid/support/v7/widget/au$2;-><init>(Landroid/support/v7/widget/au;)V

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/an;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    iget-object v5, p0, Landroid/support/v7/widget/au;->G:Landroid/support/v7/widget/au$c;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/an;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/au;->E:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    iget-object v5, p0, Landroid/support/v7/widget/au;->E:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/an;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    iget-object v7, p0, Landroid/support/v7/widget/au;->B:Landroid/view/View;

    if-eqz v7, :cond_26

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v8, p0, Landroid/support/v7/widget/au;->l:I

    packed-switch v8, :pswitch_data_0

    const-string v0, "ListPopupWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Invalid hint position "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Landroid/support/v7/widget/au;->l:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget v0, p0, Landroid/support/v7/widget/au;->f:I

    if-ltz v0, :cond_5

    iget v0, p0, Landroid/support/v7/widget/au;->f:I

    move v4, v0

    move v0, v1

    :goto_2
    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v7, v0, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v7

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    move-object v4, v5

    :goto_3
    iget-object v5, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    move v7, v0

    :goto_4
    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v4, p0, Landroid/support/v7/widget/au;->J:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/widget/au;->J:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/widget/au;->J:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    iget-boolean v4, p0, Landroid/support/v7/widget/au;->x:Z

    if-nez v4, :cond_24

    iget-object v4, p0, Landroid/support/v7/widget/au;->J:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iput v4, p0, Landroid/support/v7/widget/au;->v:I

    move v8, v0

    :goto_5
    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_8

    move v0, v6

    :goto_6
    iget-object v4, p0, Landroid/support/v7/widget/au;->m:Landroid/view/View;

    iget v5, p0, Landroid/support/v7/widget/au;->v:I

    invoke-direct {p0, v4, v5, v0}, Landroid/support/v7/widget/au;->a(Landroid/view/View;IZ)I

    move-result v4

    iget-boolean v0, p0, Landroid/support/v7/widget/au;->z:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/au;->u:I

    if-ne v0, v3, :cond_9

    :cond_2
    add-int v0, v4, v8

    :goto_7
    invoke-virtual {p0}, Landroid/support/v7/widget/au;->j()Z

    move-result v5

    iget-object v1, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    iget v4, p0, Landroid/support/v7/widget/au;->w:I

    invoke-static {v1, v4}, Landroid/support/v4/widget/i;->a(Landroid/widget/PopupWindow;I)V

    iget-object v1, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/support/v7/widget/au;->m:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/h/r;->D(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_3
    :goto_8
    return-void

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v5, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_5
    move v0, v2

    move v4, v2

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/widget/au;->B:Landroid/view/View;

    if-eqz v4, :cond_25

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    move v7, v0

    goto/16 :goto_4

    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/au;->J:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    move v8, v2

    goto :goto_5

    :cond_8
    move v0, v2

    goto :goto_6

    :cond_9
    iget v0, p0, Landroid/support/v7/widget/au;->f:I

    packed-switch v0, :pswitch_data_1

    iget v0, p0, Landroid/support/v7/widget/au;->f:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_9
    iget-object v0, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    sub-int/2addr v4, v7

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/an;->a(IIIII)I

    move-result v0

    if-lez v0, :cond_a

    iget-object v1, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    invoke-virtual {v1}, Landroid/support/v7/widget/an;->getPaddingTop()I

    move-result v1

    iget-object v4, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    invoke-virtual {v4}, Landroid/support/v7/widget/an;->getPaddingBottom()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v8

    add-int/2addr v7, v1

    :cond_a
    add-int/2addr v0, v7

    goto :goto_7

    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/au;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Landroid/support/v7/widget/au;->J:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Landroid/support/v7/widget/au;->J:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v9

    sub-int/2addr v0, v5

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_9

    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/au;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Landroid/support/v7/widget/au;->J:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/support/v7/widget/au;->J:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    sub-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_9

    :cond_b
    iget v1, p0, Landroid/support/v7/widget/au;->f:I

    if-ne v1, v3, :cond_e

    move v4, v3

    :goto_a
    iget v1, p0, Landroid/support/v7/widget/au;->u:I

    if-ne v1, v3, :cond_14

    if-eqz v5, :cond_10

    move v1, v0

    :goto_b
    if-eqz v5, :cond_12

    iget-object v5, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/support/v7/widget/au;->f:I

    if-ne v0, v3, :cond_11

    move v0, v3

    :goto_c
    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v5, v1

    :goto_d
    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/support/v7/widget/au;->A:Z

    if-nez v1, :cond_15

    iget-boolean v1, p0, Landroid/support/v7/widget/au;->z:Z

    if-nez v1, :cond_15

    :goto_e
    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/au;->m:Landroid/view/View;

    iget v2, p0, Landroid/support/v7/widget/au;->g:I

    iget v6, p0, Landroid/support/v7/widget/au;->v:I

    if-gez v4, :cond_c

    move v4, v3

    :cond_c
    if-gez v5, :cond_d

    move v5, v3

    :cond_d
    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_8

    :cond_e
    iget v1, p0, Landroid/support/v7/widget/au;->f:I

    if-ne v1, v10, :cond_f

    iget-object v1, p0, Landroid/support/v7/widget/au;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    move v4, v1

    goto :goto_a

    :cond_f
    iget v1, p0, Landroid/support/v7/widget/au;->f:I

    move v4, v1

    goto :goto_a

    :cond_10
    move v1, v3

    goto :goto_b

    :cond_11
    move v0, v2

    goto :goto_c

    :cond_12
    iget-object v5, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/support/v7/widget/au;->f:I

    if-ne v0, v3, :cond_13

    move v0, v3

    :goto_f
    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v5, v1

    goto :goto_d

    :cond_13
    move v0, v2

    goto :goto_f

    :cond_14
    iget v1, p0, Landroid/support/v7/widget/au;->u:I

    if-eq v1, v10, :cond_23

    iget v0, p0, Landroid/support/v7/widget/au;->u:I

    move v5, v0

    goto :goto_d

    :cond_15
    move v6, v2

    goto :goto_e

    :cond_16
    iget v1, p0, Landroid/support/v7/widget/au;->f:I

    if-ne v1, v3, :cond_1d

    move v1, v3

    :goto_10
    iget v4, p0, Landroid/support/v7/widget/au;->u:I

    if-ne v4, v3, :cond_1f

    move v0, v3

    :cond_17
    :goto_11
    iget-object v4, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    sget-object v0, Landroid/support/v7/widget/au;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_18

    :try_start_0
    sget-object v0, Landroid/support/v7/widget/au;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_18
    :goto_12
    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/support/v7/widget/au;->A:Z

    if-nez v1, :cond_20

    iget-boolean v1, p0, Landroid/support/v7/widget/au;->z:Z

    if-nez v1, :cond_20

    :goto_13
    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/au;->F:Landroid/support/v7/widget/au$d;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/au;->i:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/support/v7/widget/au;->h:Z

    invoke-static {v0, v1}, Landroid/support/v4/widget/i;->a(Landroid/widget/PopupWindow;Z)V

    :cond_19
    sget-object v0, Landroid/support/v7/widget/au;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1a

    :try_start_1
    sget-object v0, Landroid/support/v7/widget/au;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/v7/widget/au;->q:Landroid/graphics/Rect;

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1a
    :goto_14
    iget-object v1, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/support/v7/widget/au;->m:Landroid/view/View;

    iget v0, p0, Landroid/support/v7/widget/au;->g:I

    iget v4, p0, Landroid/support/v7/widget/au;->v:I

    iget v5, p0, Landroid/support/v7/widget/au;->j:I

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_21

    invoke-virtual {v1, v2, v0, v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    :goto_15
    iget-object v0, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/an;->setSelection(I)V

    iget-boolean v0, p0, Landroid/support/v7/widget/au;->r:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    invoke-virtual {v0}, Landroid/support/v7/widget/an;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    invoke-virtual {p0}, Landroid/support/v7/widget/au;->i()V

    :cond_1c
    iget-boolean v0, p0, Landroid/support/v7/widget/au;->r:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/au;->p:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/au;->H:Landroid/support/v7/widget/au$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8

    :cond_1d
    iget v1, p0, Landroid/support/v7/widget/au;->f:I

    if-ne v1, v10, :cond_1e

    iget-object v1, p0, Landroid/support/v7/widget/au;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto/16 :goto_10

    :cond_1e
    iget v1, p0, Landroid/support/v7/widget/au;->f:I

    goto/16 :goto_10

    :cond_1f
    iget v4, p0, Landroid/support/v7/widget/au;->u:I

    if-eq v4, v10, :cond_17

    iget v0, p0, Landroid/support/v7/widget/au;->u:I

    goto/16 :goto_11

    :catch_0
    move-exception v0

    const-string v0, "ListPopupWindow"

    const-string v1, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_20
    move v6, v2

    goto :goto_13

    :catch_1
    move-exception v0

    const-string v1, "ListPopupWindow"

    const-string v2, "Could not invoke setEpicenterBounds on PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :cond_21
    invoke-static {v2}, Landroid/support/v4/h/r;->g(Landroid/view/View;)I

    move-result v6

    invoke-static {v5, v6}, Landroid/support/v4/h/d;->a(II)I

    move-result v5

    and-int/lit8 v5, v5, 0x7

    const/4 v6, 0x5

    if-ne v5, v6, :cond_22

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v0, v5

    :cond_22
    invoke-virtual {v1, v2, v0, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_15

    :cond_23
    move v5, v0

    goto/16 :goto_d

    :cond_24
    move v8, v0

    goto/16 :goto_5

    :cond_25
    move v7, v2

    goto/16 :goto_4

    :cond_26
    move-object v4, v0

    move v0, v2

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final b(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/au;->J:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/widget/au;->J:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/widget/au;->J:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/au;->f:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/v7/widget/au;->f:I

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Landroid/support/v7/widget/au;->B:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/au;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/widget/au;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v2, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    iget-object v0, p0, Landroid/support/v7/widget/au;->p:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/au;->o:Landroid/support/v7/widget/au$e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final e()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    return-object v0
.end method

.method public final f()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/au;->r:Z

    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public final g()I
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/au;->x:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/au;->v:I

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/au;->e:Landroid/support/v7/widget/an;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/an;->setListSelectionHidden(Z)V

    invoke-virtual {v0}, Landroid/support/v7/widget/an;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final j()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/au;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
