.class final Landroid/support/v7/app/f;
.super Landroid/support/v7/app/e;

# interfaces
.implements Landroid/support/v7/view/menu/h$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/f$d;,
        Landroid/support/v7/app/f$c;,
        Landroid/support/v7/app/f$e;,
        Landroid/support/v7/app/f$f;,
        Landroid/support/v7/app/f$a;,
        Landroid/support/v7/app/f$g;,
        Landroid/support/v7/app/f$b;
    }
.end annotation


# static fields
.field private static final x:Z

.field private static final y:[I

.field private static z:Z


# instance fields
.field private A:Ljava/lang/CharSequence;

.field private B:Landroid/support/v7/widget/aj;

.field private C:Landroid/support/v7/app/f$a;

.field private D:Landroid/support/v7/app/f$g;

.field private E:Z

.field private F:Landroid/widget/TextView;

.field private G:Landroid/view/View;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:[Landroid/support/v7/app/f$f;

.field private L:Landroid/support/v7/app/f$f;

.field private M:Z

.field private N:I

.field private O:Z

.field private P:Landroid/support/v7/app/f$d;

.field private final Q:Ljava/lang/Runnable;

.field private R:Z

.field private S:Landroid/graphics/Rect;

.field private T:Landroid/graphics/Rect;

.field private U:Landroid/support/v7/app/AppCompatViewInflater;

.field final b:Landroid/content/Context;

.field final c:Landroid/view/Window;

.field final d:Landroid/view/Window$Callback;

.field final e:Landroid/view/Window$Callback;

.field final f:Landroid/support/v7/app/d;

.field g:Landroid/support/v7/app/a;

.field h:Landroid/view/MenuInflater;

.field i:Landroid/support/v7/view/b;

.field j:Landroid/support/v7/widget/ActionBarContextView;

.field k:Landroid/widget/PopupWindow;

.field l:Ljava/lang/Runnable;

.field m:Landroid/support/v4/h/v;

.field n:Z

.field o:Landroid/view/ViewGroup;

.field p:Z

.field q:Z

.field r:Z

.field s:Z

.field t:Z

.field u:Z

.field v:Z

.field w:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/v7/app/f;->x:Z

    new-array v0, v1, [I

    const v3, 0x1010054

    aput v3, v0, v2

    sput-object v0, Landroid/support/v7/app/f;->y:[I

    sget-boolean v0, Landroid/support/v7/app/f;->x:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/support/v7/app/f;->z:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v2, Landroid/support/v7/app/f$1;

    invoke-direct {v2, v0}, Landroid/support/v7/app/f$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-boolean v1, Landroid/support/v7/app/f;->z:Z

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/d;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v7/app/e;-><init>()V

    iput-object v2, p0, Landroid/support/v7/app/f;->m:Landroid/support/v4/h/v;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/f;->n:Z

    const/16 v0, -0x64

    iput v0, p0, Landroid/support/v7/app/f;->N:I

    new-instance v0, Landroid/support/v7/app/f$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/f$2;-><init>(Landroid/support/v7/app/f;)V

    iput-object v0, p0, Landroid/support/v7/app/f;->Q:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    iput-object p3, p0, Landroid/support/v7/app/f;->f:Landroid/support/v7/app/d;

    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    iget-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/support/v7/app/f$c;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppCompat has already installed itself into the Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/support/v7/app/f$c;

    iget-object v1, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/f$c;-><init>(Landroid/support/v7/app/f;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/view/Window$Callback;

    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    iget-object v1, p0, Landroid/support/v7/app/f;->e:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    sget-object v0, Landroid/support/v7/app/f;->y:[I

    invoke-static {p1, v2, v0}, Landroid/support/v7/widget/bm;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/bm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bm;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, v0, Landroid/support/v7/widget/bm;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/app/f;->U:Landroid/support/v7/app/AppCompatViewInflater;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/a/a$j;->AppCompatTheme:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_viewInflaterClass:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-class v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/f;->U:Landroid/support/v7/app/AppCompatViewInflater;

    :cond_1
    :goto_0
    sget-boolean v0, Landroid/support/v7/app/f;->x:Z

    if-eqz v0, :cond_5

    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v0, :cond_4

    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v7, :cond_3

    move v0, v7

    :goto_1
    move v5, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v7/app/f;->U:Landroid/support/v7/app/AppCompatViewInflater;

    sget-boolean v6, Landroid/support/v7/app/f;->x:Z

    invoke-static {}, Landroid/support/v7/widget/br;->a()Z

    move-result v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v8}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatViewInflater;

    iput-object v0, p0, Landroid/support/v7/app/f;->U:Landroid/support/v7/app/AppCompatViewInflater;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "AppCompatDelegate"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to instantiate custom view inflater "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". Falling back to default."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/f;->U:Landroid/support/v7/app/AppCompatViewInflater;

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    invoke-direct {p0, v0}, Landroid/support/v7/app/f;->a(Landroid/view/ViewParent;)Z

    move-result v0

    goto :goto_1

    :cond_5
    move v5, v1

    goto :goto_2
.end method

.method private a(Landroid/support/v7/app/f$f;Landroid/view/KeyEvent;)V
    .locals 10

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v9, 0x1

    iget-boolean v0, p1, Landroid/support/v7/app/f$f;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/f;->u:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/support/v7/app/f$f;->a:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    move v0, v9

    :goto_1
    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v4, p1, Landroid/support/v7/app/f$f;->a:I

    iget-object v5, p1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, v9}, Landroid/support/v7/app/f;->a(Landroid/support/v7/app/f$f;Z)V

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    if-eqz v8, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/f;->b(Landroid/support/v7/app/f$f;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/app/f$f;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Landroid/support/v7/app/f$f;->q:Z

    if-eqz v0, :cond_16

    :cond_5
    iget-object v0, p1, Landroid/support/v7/app/f$f;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/support/v7/app/f;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    sget v5, Landroid/support/v7/a/a$a;->actionBarPopupTheme:I

    invoke-virtual {v4, v5, v1, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_6

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_6
    sget v5, Landroid/support/v7/a/a$a;->panelMenuListTheme:I

    invoke-virtual {v4, v5, v1, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_b

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_2
    new-instance v1, Landroid/support/v7/view/d;

    invoke-direct {v1, v0, v3}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v1, p1, Landroid/support/v7/app/f$f;->l:Landroid/content/Context;

    sget-object v0, Landroid/support/v7/a/a$j;->AppCompatTheme:[I

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$j;->AppCompatTheme_panelBackground:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p1, Landroid/support/v7/app/f$f;->b:I

    sget v1, Landroid/support/v7/a/a$j;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p1, Landroid/support/v7/app/f$f;->f:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/support/v7/app/f$e;

    iget-object v1, p1, Landroid/support/v7/app/f$f;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/f$e;-><init>(Landroid/support/v7/app/f;Landroid/content/Context;)V

    iput-object v0, p1, Landroid/support/v7/app/f$f;->g:Landroid/view/ViewGroup;

    const/16 v0, 0x51

    iput v0, p1, Landroid/support/v7/app/f$f;->c:I

    iget-object v0, p1, Landroid/support/v7/app/f$f;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    :cond_7
    :goto_3
    iget-object v0, p1, Landroid/support/v7/app/f$f;->i:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p1, Landroid/support/v7/app/f$f;->i:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/f$f;->h:Landroid/view/View;

    move v0, v9

    :goto_4
    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/app/f$f;->h:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v0, p1, Landroid/support/v7/app/f$f;->i:Landroid/view/View;

    if-eqz v0, :cond_14

    move v0, v9

    :goto_5
    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/app/f$f;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_18

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v0

    :goto_6
    iget v0, p1, Landroid/support/v7/app/f$f;->b:I

    iget-object v4, p1, Landroid/support/v7/app/f$f;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p1, Landroid/support/v7/app/f$f;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/f$f;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    iget-object v0, p1, Landroid/support/v7/app/f$f;->g:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/f$f;->h:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p1, Landroid/support/v7/app/f$f;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Landroid/support/v7/app/f$f;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_9
    move v1, v2

    :cond_a
    :goto_7
    iput-boolean v3, p1, Landroid/support/v7/app/f$f;->n:Z

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p1, Landroid/support/v7/app/f$f;->d:I

    iget v4, p1, Landroid/support/v7/app/f$f;->e:I

    const/16 v5, 0x3ea

    const/high16 v6, 0x820000

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v1, p1, Landroid/support/v7/app/f$f;->c:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p1, Landroid/support/v7/app/f$f;->f:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p1, Landroid/support/v7/app/f$f;->g:Landroid/view/ViewGroup;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v9, p1, Landroid/support/v7/app/f$f;->o:Z

    goto/16 :goto_0

    :cond_b
    sget v1, Landroid/support/v7/a/a$i;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v4, v1, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto/16 :goto_2

    :cond_c
    iget-boolean v0, p1, Landroid/support/v7/app/f$f;->q:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/support/v7/app/f$f;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p1, Landroid/support/v7/app/f$f;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_3

    :cond_d
    iget-object v0, p1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v7/app/f;->D:Landroid/support/v7/app/f$g;

    if-nez v0, :cond_e

    new-instance v0, Landroid/support/v7/app/f$g;

    invoke-direct {v0, p0}, Landroid/support/v7/app/f$g;-><init>(Landroid/support/v7/app/f;)V

    iput-object v0, p0, Landroid/support/v7/app/f;->D:Landroid/support/v7/app/f$g;

    :cond_e
    iget-object v0, p0, Landroid/support/v7/app/f;->D:Landroid/support/v7/app/f$g;

    iget-object v1, p1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    if-nez v1, :cond_f

    const/4 v0, 0x0

    :goto_8
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/f$f;->h:Landroid/view/View;

    iget-object v0, p1, Landroid/support/v7/app/f$f;->h:Landroid/view/View;

    if-eqz v0, :cond_13

    move v0, v9

    goto/16 :goto_4

    :cond_f
    iget-object v1, p1, Landroid/support/v7/app/f$f;->k:Landroid/support/v7/view/menu/f;

    if-nez v1, :cond_10

    new-instance v1, Landroid/support/v7/view/menu/f;

    iget-object v4, p1, Landroid/support/v7/app/f$f;->l:Landroid/content/Context;

    sget v5, Landroid/support/v7/a/a$g;->abc_list_menu_item_layout:I

    invoke-direct {v1, v4, v5}, Landroid/support/v7/view/menu/f;-><init>(Landroid/content/Context;I)V

    iput-object v1, p1, Landroid/support/v7/app/f$f;->k:Landroid/support/v7/view/menu/f;

    iget-object v1, p1, Landroid/support/v7/app/f$f;->k:Landroid/support/v7/view/menu/f;

    iput-object v0, v1, Landroid/support/v7/view/menu/f;->h:Landroid/support/v7/view/menu/o$a;

    iget-object v0, p1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    iget-object v1, p1, Landroid/support/v7/app/f$f;->k:Landroid/support/v7/view/menu/f;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/o;)V

    :cond_10
    iget-object v1, p1, Landroid/support/v7/app/f$f;->k:Landroid/support/v7/view/menu/f;

    iget-object v0, p1, Landroid/support/v7/app/f$f;->g:Landroid/view/ViewGroup;

    iget-object v4, v1, Landroid/support/v7/view/menu/f;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    if-nez v4, :cond_12

    iget-object v4, v1, Landroid/support/v7/view/menu/f;->b:Landroid/view/LayoutInflater;

    sget v5, Landroid/support/v7/a/a$g;->abc_expanded_menu_layout:I

    invoke-virtual {v4, v5, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/ExpandedMenuView;

    iput-object v0, v1, Landroid/support/v7/view/menu/f;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object v0, v1, Landroid/support/v7/view/menu/f;->i:Landroid/support/v7/view/menu/f$a;

    if-nez v0, :cond_11

    new-instance v0, Landroid/support/v7/view/menu/f$a;

    invoke-direct {v0, v1}, Landroid/support/v7/view/menu/f$a;-><init>(Landroid/support/v7/view/menu/f;)V

    iput-object v0, v1, Landroid/support/v7/view/menu/f;->i:Landroid/support/v7/view/menu/f$a;

    :cond_11
    iget-object v0, v1, Landroid/support/v7/view/menu/f;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object v4, v1, Landroid/support/v7/view/menu/f;->i:Landroid/support/v7/view/menu/f$a;

    invoke-virtual {v0, v4}, Landroid/support/v7/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, v1, Landroid/support/v7/view/menu/f;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_12
    iget-object v0, v1, Landroid/support/v7/view/menu/f;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    goto :goto_8

    :cond_13
    move v0, v3

    goto/16 :goto_4

    :cond_14
    iget-object v0, p1, Landroid/support/v7/app/f$f;->k:Landroid/support/v7/view/menu/f;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/f;->b()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_15

    move v0, v9

    goto/16 :goto_5

    :cond_15
    move v0, v3

    goto/16 :goto_5

    :cond_16
    iget-object v0, p1, Landroid/support/v7/app/f$f;->i:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p1, Landroid/support/v7/app/f$f;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_a

    :cond_17
    move v1, v2

    goto/16 :goto_7

    :cond_18
    move-object v1, v0

    goto/16 :goto_6
.end method

.method private a(Landroid/support/v7/app/f$f;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p1, Landroid/support/v7/app/f$f;->m:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Landroid/support/v7/app/f;->b(Landroid/support/v7/app/f$f;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Landroid/support/v7/view/menu/h;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/ViewParent;)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v1, p1

    :goto_1
    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eq v1, v3, :cond_2

    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/h/r;->D(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1
.end method

.method private b(Landroid/support/v7/app/f$f;Landroid/view/KeyEvent;)Z
    .locals 10

    const/16 v5, 0x6c

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Landroid/support/v7/app/f;->u:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-boolean v0, p1, Landroid/support/v7/app/f$f;->m:Z

    if-eqz v0, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/f;->L:Landroid/support/v7/app/f$f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/f;->L:Landroid/support/v7/app/f$f;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/f;->L:Landroid/support/v7/app/f$f;

    invoke-virtual {p0, v0, v4}, Landroid/support/v7/app/f;->a(Landroid/support/v7/app/f$f;Z)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v7

    if-eqz v7, :cond_4

    iget v0, p1, Landroid/support/v7/app/f$f;->a:I

    invoke-interface {v7, v0}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/app/f$f;->i:Landroid/view/View;

    :cond_4
    iget v0, p1, Landroid/support/v7/app/f$f;->a:I

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/support/v7/app/f$f;->a:I

    if-ne v0, v5, :cond_f

    :cond_5
    move v6, v3

    :goto_1
    if-eqz v6, :cond_6

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->g()V

    :cond_6
    iget-object v0, p1, Landroid/support/v7/app/f$f;->i:Landroid/view/View;

    if-nez v0, :cond_16

    if-eqz v6, :cond_7

    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/a;

    instance-of v0, v0, Landroid/support/v7/app/i;

    if-nez v0, :cond_16

    :cond_7
    iget-object v0, p1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Landroid/support/v7/app/f$f;->r:Z

    if-eqz v0, :cond_12

    :cond_8
    iget-object v0, p1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    if-nez v0, :cond_c

    iget-object v2, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    iget v0, p1, Landroid/support/v7/app/f$f;->a:I

    if-eqz v0, :cond_9

    iget v0, p1, Landroid/support/v7/app/f$f;->a:I

    if-ne v0, v5, :cond_19

    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_19

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v0, Landroid/support/v7/a/a$a;->actionBarTheme:I

    invoke-virtual {v8, v0, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_10

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v9, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v9, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    sget v9, Landroid/support/v7/a/a$a;->actionBarWidgetTheme:I

    invoke-virtual {v0, v9, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    :goto_2
    iget v9, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_b

    if-nez v0, :cond_a

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_a
    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_b
    move-object v5, v0

    if-eqz v5, :cond_19

    new-instance v0, Landroid/support/v7/view/d;

    invoke-direct {v0, v2, v4}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :goto_3
    new-instance v2, Landroid/support/v7/view/menu/h;

    invoke-direct {v2, v0}, Landroid/support/v7/view/menu/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/h$a;)V

    invoke-virtual {p1, v2}, Landroid/support/v7/app/f$f;->a(Landroid/support/v7/view/menu/h;)V

    iget-object v0, p1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_0

    :cond_c
    if-eqz v6, :cond_e

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/app/f;->C:Landroid/support/v7/app/f$a;

    if-nez v0, :cond_d

    new-instance v0, Landroid/support/v7/app/f$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/f$a;-><init>(Landroid/support/v7/app/f;)V

    iput-object v0, p0, Landroid/support/v7/app/f;->C:Landroid/support/v7/app/f$a;

    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    iget-object v2, p1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    iget-object v5, p0, Landroid/support/v7/app/f;->C:Landroid/support/v7/app/f$a;

    invoke-interface {v0, v2, v5}, Landroid/support/v7/widget/aj;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/o$a;)V

    :cond_e
    iget-object v0, p1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->e()V

    iget v0, p1, Landroid/support/v7/app/f$f;->a:I

    iget-object v2, p1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {v7, v0, v2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1, v1}, Landroid/support/v7/app/f$f;->a(Landroid/support/v7/view/menu/h;)V

    if-eqz v6, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    iget-object v2, p0, Landroid/support/v7/app/f;->C:Landroid/support/v7/app/f$a;

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/aj;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/o$a;)V

    goto/16 :goto_0

    :cond_f
    move v6, v4

    goto/16 :goto_1

    :cond_10
    sget v0, Landroid/support/v7/a/a$a;->actionBarWidgetTheme:I

    invoke-virtual {v8, v0, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v0, v1

    goto :goto_2

    :cond_11
    iput-boolean v4, p1, Landroid/support/v7/app/f$f;->r:Z

    :cond_12
    iget-object v0, p1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->e()V

    iget-object v0, p1, Landroid/support/v7/app/f$f;->s:Landroid/os/Bundle;

    if-eqz v0, :cond_13

    iget-object v0, p1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    iget-object v2, p1, Landroid/support/v7/app/f$f;->s:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/h;->b(Landroid/os/Bundle;)V

    iput-object v1, p1, Landroid/support/v7/app/f$f;->s:Landroid/os/Bundle;

    :cond_13
    iget-object v0, p1, Landroid/support/v7/app/f$f;->i:Landroid/view/View;

    iget-object v2, p1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {v7, v4, v0, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz v6, :cond_14

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    iget-object v2, p0, Landroid/support/v7/app/f;->C:Landroid/support/v7/app/f$a;

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/aj;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/o$a;)V

    :cond_14
    iget-object v0, p1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->f()V

    goto/16 :goto_0

    :cond_15
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_4
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v3, :cond_18

    move v0, v3

    :goto_5
    iput-boolean v0, p1, Landroid/support/v7/app/f$f;->p:Z

    iget-object v0, p1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    iget-boolean v1, p1, Landroid/support/v7/app/f$f;->p:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->setQwertyMode(Z)V

    iget-object v0, p1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->f()V

    :cond_16
    iput-boolean v3, p1, Landroid/support/v7/app/f$f;->m:Z

    iput-boolean v4, p1, Landroid/support/v7/app/f$f;->n:Z

    iput-object p1, p0, Landroid/support/v7/app/f;->L:Landroid/support/v7/app/f$f;

    move v4, v3

    goto/16 :goto_0

    :cond_17
    const/4 v0, -0x1

    goto :goto_4

    :cond_18
    move v0, v4

    goto :goto_5

    :cond_19
    move-object v0, v2

    goto/16 :goto_3
.end method

.method private h(I)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Landroid/support/v7/app/f;->w:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/app/f;->w:I

    iget-boolean v0, p0, Landroid/support/v7/app/f;->v:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/f;->Q:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/h/r;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Landroid/support/v7/app/f;->v:Z

    :cond_0
    return-void
.end method

.method private p()V
    .locals 3

    invoke-direct {p0}, Landroid/support/v7/app/f;->q()V

    iget-boolean v0, p0, Landroid/support/v7/app/f;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/a;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    new-instance v1, Landroid/support/v7/app/l;

    iget-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroid/support/v7/app/f;->q:Z

    invoke-direct {v1, v0, v2}, Landroid/support/v7/app/l;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/a;

    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/a;

    iget-boolean v1, p0, Landroid/support/v7/app/f;->R:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->b(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    new-instance v1, Landroid/support/v7/app/l;

    iget-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/support/v7/app/l;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/a;

    goto :goto_1
.end method

.method private q()V
    .locals 9

    const/16 v8, 0x6c

    const v5, 0x1020002

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-boolean v0, p0, Landroid/support/v7/app/f;->E:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/a/a$j;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget v1, Landroid/support/v7/a/a$j;->AppCompatTheme_windowNoTitle:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v7}, Landroid/support/v7/app/f;->c(I)Z

    :cond_1
    :goto_0
    sget v1, Landroid/support/v7/a/a$j;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x6d

    invoke-virtual {p0, v1}, Landroid/support/v7/app/f;->c(I)Z

    :cond_2
    sget v1, Landroid/support/v7/a/a$j;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/support/v7/app/f;->c(I)Z

    :cond_3
    sget v1, Landroid/support/v7/a/a$j;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/f;->s:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/app/f;->t:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Landroid/support/v7/app/f;->s:Z

    if-eqz v1, :cond_5

    sget v1, Landroid/support/v7/a/a$g;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-boolean v6, p0, Landroid/support/v7/app/f;->q:Z

    iput-boolean v6, p0, Landroid/support/v7/app/f;->p:Z

    move-object v2, v0

    :goto_1
    if-nez v2, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/support/v7/app/f;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/f;->q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/f;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/f;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/f;->t:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget v1, Landroid/support/v7/a/a$j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v8}, Landroid/support/v7/app/f;->c(I)Z

    goto/16 :goto_0

    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/app/f;->p:Z

    if-eqz v0, :cond_1c

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Landroid/support/v7/a/a$a;->actionBarTheme:I

    invoke-virtual {v0, v2, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_9

    new-instance v0, Landroid/support/v7/view/d;

    iget-object v2, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v2, v1}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    :goto_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$g;->abc_screen_toolbar:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Landroid/support/v7/a/a$f;->decor_content_parent:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aj;

    iput-object v1, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    iget-object v1, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    iget-object v2, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/aj;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v1, p0, Landroid/support/v7/app/f;->q:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    const/16 v2, 0x6d

    invoke-interface {v1, v2}, Landroid/support/v7/widget/aj;->a(I)V

    :cond_6
    iget-boolean v1, p0, Landroid/support/v7/app/f;->H:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/aj;->a(I)V

    :cond_7
    iget-boolean v1, p0, Landroid/support/v7/app/f;->I:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/support/v7/widget/aj;->a(I)V

    :cond_8
    move-object v2, v0

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    goto :goto_2

    :cond_a
    iget-boolean v1, p0, Landroid/support/v7/app/f;->r:Z

    if-eqz v1, :cond_b

    sget v1, Landroid/support/v7/a/a$g;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_c

    new-instance v0, Landroid/support/v7/app/f$3;

    invoke-direct {v0, p0}, Landroid/support/v7/app/f$3;-><init>(Landroid/support/v7/app/f;)V

    invoke-static {v1, v0}, Landroid/support/v4/h/r;->a(Landroid/view/View;Landroid/support/v4/h/n;)V

    move-object v2, v1

    goto/16 :goto_1

    :cond_b
    sget v1, Landroid/support/v7/a/a$g;->abc_screen_simple:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_3

    :cond_c
    move-object v0, v1

    check-cast v0, Landroid/support/v7/widget/ap;

    new-instance v2, Landroid/support/v7/app/f$4;

    invoke-direct {v2, p0}, Landroid/support/v7/app/f$4;-><init>(Landroid/support/v7/app/f;)V

    invoke-interface {v0, v2}, Landroid/support/v7/widget/ap;->setOnFitSystemWindowsListener(Landroid/support/v7/widget/ap$a;)V

    move-object v2, v1

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    if-nez v0, :cond_e

    sget v0, Landroid/support/v7/a/a$f;->title:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/f;->F:Landroid/widget/TextView;

    :cond_e
    invoke-static {v2}, Landroid/support/v7/widget/bu;->b(Landroid/view/View;)V

    sget v0, Landroid/support/v7/a/a$f;->action_bar_activity_content:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    iget-object v1, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v1, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_10

    :goto_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_f

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_f
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setId(I)V

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V

    instance-of v4, v1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_10

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    iget-object v1, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v1, Landroid/support/v7/app/f$5;

    invoke-direct {v1, p0}, Landroid/support/v7/app/f$5;-><init>(Landroid/support/v7/app/f;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ContentFrameLayout;->setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$a;)V

    iput-object v2, p0, Landroid/support/v7/app/f;->o:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/aj;->setWindowTitle(Ljava/lang/CharSequence;)V

    :cond_11
    :goto_6
    iget-object v0, p0, Landroid/support/v7/app/f;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    iget-object v1, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iget-object v5, v0, Landroid/support/v7/widget/ContentFrameLayout;->b:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v0}, Landroid/support/v4/h/r;->A(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    :cond_12
    iget-object v1, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/a/a$j;->AppCompatTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_13

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_13
    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_14

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_14
    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_15

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_15
    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_16

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_16
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    iput-boolean v7, p0, Landroid/support/v7/app/f;->E:Z

    invoke-virtual {p0, v6}, Landroid/support/v7/app/f;->e(I)Landroid/support/v7/app/f$f;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/app/f;->u:Z

    if-nez v1, :cond_18

    if-eqz v0, :cond_17

    iget-object v0, v0, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    if-nez v0, :cond_18

    :cond_17
    invoke-direct {p0, v8}, Landroid/support/v7/app/f;->h(I)V

    :cond_18
    return-void

    :cond_19
    iget-object v0, p0, Landroid/support/v7/app/f;->A:Ljava/lang/CharSequence;

    goto/16 :goto_5

    :cond_1a
    iget-object v1, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/a;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/a;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/a;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_1b
    iget-object v1, p0, Landroid/support/v7/app/f;->F:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/support/v7/app/f;->F:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_1c
    move-object v2, v3

    goto/16 :goto_1
.end method

.method private r()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/app/f;->E:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private s()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/app/f;->P:Landroid/support/v7/app/f$d;

    if-nez v0, :cond_1

    new-instance v1, Landroid/support/v7/app/f$d;

    iget-object v0, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/k;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/support/v7/app/k;

    const-string v0, "location"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {v3, v2, v0}, Landroid/support/v7/app/k;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v3, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/k;

    :cond_0
    sget-object v0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/k;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/app/f$d;-><init>(Landroid/support/v7/app/f;Landroid/support/v7/app/k;)V

    iput-object v1, p0, Landroid/support/v7/app/f;->P:Landroid/support/v7/app/f$d;

    :cond_1
    return-void
.end method

.method private t()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/v7/app/f;->O:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/support/v7/app/a;
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/f;->p()V

    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/a;

    return-object v0
.end method

.method final a(Landroid/view/Menu;)Landroid/support/v7/app/f$f;
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/support/v7/app/f;->K:[Landroid/support/v7/app/f$f;

    if-eqz v3, :cond_0

    array-length v0, v3

    :goto_0
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v1, v3, v2

    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    if-ne v4, p1, :cond_1

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final a(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/app/f;->q()V

    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final a(ILandroid/support/v7/app/f$f;Landroid/view/Menu;)V
    .locals 1

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f;->K:[Landroid/support/v7/app/f$f;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f;->K:[Landroid/support/v7/app/f$f;

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Landroid/support/v7/app/f$f;->o:Z

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/app/f;->u:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/app/f;->p:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/f;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/f;->a()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->a(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-static {}, Landroid/support/v7/widget/l;->a()Landroid/support/v7/widget/l;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/support/v7/app/f;->j()Z

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/16 v2, -0x64

    iget-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/t;->b(Landroid/app/Activity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/a;

    if-nez v0, :cond_2

    iput-boolean v3, p0, Landroid/support/v7/app/f;->R:Z

    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/app/f;->N:I

    if-ne v0, v2, :cond_1

    const-string v0, "appcompat:local_night_mode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/f;->N:I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Landroid/support/v7/app/a;->b(Z)V

    goto :goto_1
.end method

.method final a(Landroid/support/v7/app/f$f;Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget v0, p1, Landroid/support/v7/app/f$f;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/f;->b(Landroid/support/v7/view/menu/h;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    iget-boolean v1, p1, Landroid/support/v7/app/f$f;->o:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/support/v7/app/f$f;->g:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/support/v7/app/f$f;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_2

    iget v0, p1, Landroid/support/v7/app/f$f;->a:I

    invoke-virtual {p0, v0, p1, v3}, Landroid/support/v7/app/f;->a(ILandroid/support/v7/app/f$f;Landroid/view/Menu;)V

    :cond_2
    iput-boolean v2, p1, Landroid/support/v7/app/f$f;->m:Z

    iput-boolean v2, p1, Landroid/support/v7/app/f$f;->n:Z

    iput-boolean v2, p1, Landroid/support/v7/app/f$f;->o:Z

    iput-object v3, p1, Landroid/support/v7/app/f$f;->h:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/app/f$f;->q:Z

    iget-object v0, p0, Landroid/support/v7/app/f;->L:Landroid/support/v7/app/f$f;

    if-ne v0, p1, :cond_0

    iput-object v3, p0, Landroid/support/v7/app/f;->L:Landroid/support/v7/app/f$f;

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/view/menu/h;)V
    .locals 6

    const/16 v5, 0x6c

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    invoke-interface {v1}, Landroid/support/v7/widget/aj;->c()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/support/v7/app/f;->u:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v7/app/f;->v:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/app/f;->w:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/f;->Q:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroid/support/v7/app/f;->Q:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-virtual {p0, v4}, Landroid/support/v7/app/f;->e(I)Landroid/support/v7/app/f$f;

    move-result-object v1

    iget-object v2, v1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Landroid/support/v7/app/f$f;->r:Z

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/support/v7/app/f$f;->i:Landroid/view/View;

    iget-object v3, v1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->e()Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    invoke-interface {v1}, Landroid/support/v7/widget/aj;->f()Z

    iget-boolean v1, p0, Landroid/support/v7/app/f;->u:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, v4}, Landroid/support/v7/app/f;->e(I)Landroid/support/v7/app/f$f;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v4}, Landroid/support/v7/app/f;->e(I)Landroid/support/v7/app/f$f;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/f$f;->q:Z

    invoke-virtual {p0, v0, v4}, Landroid/support/v7/app/f;->a(Landroid/support/v7/app/f$f;Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/f;->a(Landroid/support/v7/app/f$f;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/Toolbar;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/f;->a()Landroid/support/v7/app/a;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/app/l;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object v2, p0, Landroid/support/v7/app/f;->h:Landroid/view/MenuInflater;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/app/a;->i()V

    :cond_2
    if-eqz p1, :cond_3

    new-instance v1, Landroid/support/v7/app/i;

    iget-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/app/f;->e:Landroid/view/Window$Callback;

    invoke-direct {v1, p1, v0, v2}, Landroid/support/v7/app/i;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/a;

    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    iget-object v1, v1, Landroid/support/v7/app/i;->c:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/app/f;->g()V

    goto :goto_0

    :cond_3
    iput-object v2, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/a;

    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    iget-object v1, p0, Landroid/support/v7/app/f;->e:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_1
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/f;->q()V

    iget-object v0, p0, Landroid/support/v7/app/f;->o:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/f;->q()V

    iget-object v0, p0, Landroid/support/v7/app/f;->o:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/app/f;->A:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/aj;->setWindowTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/f;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f;->F:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method final a(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/support/v7/app/f;->a()Landroid/support/v7/app/a;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/app/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/f;->L:Landroid/support/v7/app/f$f;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/app/f;->L:Landroid/support/v7/app/f$f;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Landroid/support/v7/app/f;->a(Landroid/support/v7/app/f$f;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/f;->L:Landroid/support/v7/app/f$f;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/f;->L:Landroid/support/v7/app/f$f;

    iput-boolean v0, v1, Landroid/support/v7/app/f$f;->n:Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/support/v7/app/f;->L:Landroid/support/v7/app/f$f;

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/v7/app/f;->e(I)Landroid/support/v7/app/f$f;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/f;->b(Landroid/support/v7/app/f$f;Landroid/view/KeyEvent;)Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Landroid/support/v7/app/f;->a(Landroid/support/v7/app/f$f;ILandroid/view/KeyEvent;)Z

    move-result v3

    iput-boolean v1, v2, Landroid/support/v7/app/f$f;->m:Z

    if-nez v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/app/f;->u:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->l()Landroid/support/v7/view/menu/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/f;->a(Landroid/view/Menu;)Landroid/support/v7/app/f$f;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Landroid/support/v7/app/f$f;->a:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/support/v4/h/e$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/support/v7/app/g;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Landroid/support/v4/h/e;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x52

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    if-eqz v0, :cond_6

    sparse-switch v3, :sswitch_data_0

    :goto_2
    move v1, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/support/v7/app/f;->e(I)Landroid/support/v7/app/f$f;

    move-result-object v0

    iget-boolean v2, v0, Landroid/support/v7/app/f$f;->o:Z

    if-nez v2, :cond_1

    invoke-direct {p0, v0, p1}, Landroid/support/v7/app/f;->b(Landroid/support/v7/app/f$f;Landroid/view/KeyEvent;)Z

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/support/v7/app/f;->M:Z

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    sparse-switch v3, :sswitch_data_1

    :cond_7
    move v1, v2

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Landroid/support/v7/app/f;->i:Landroid/support/v7/view/b;

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/support/v7/app/f;->e(I)Landroid/support/v7/app/f$f;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->c()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/app/f;->u:Z

    if-nez v0, :cond_10

    invoke-direct {p0, v3, p1}, Landroid/support/v7/app/f;->b(Landroid/support/v7/app/f$f;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->e()Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->f()Z

    move-result v0

    goto :goto_4

    :cond_9
    iget-boolean v0, v3, Landroid/support/v7/app/f$f;->o:Z

    if-nez v0, :cond_a

    iget-boolean v0, v3, Landroid/support/v7/app/f$f;->n:Z

    if-eqz v0, :cond_b

    :cond_a
    iget-boolean v0, v3, Landroid/support/v7/app/f$f;->o:Z

    invoke-virtual {p0, v3, v1}, Landroid/support/v7/app/f;->a(Landroid/support/v7/app/f$f;Z)V

    goto :goto_4

    :cond_b
    iget-boolean v0, v3, Landroid/support/v7/app/f$f;->m:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v3, Landroid/support/v7/app/f$f;->r:Z

    if-eqz v0, :cond_11

    iput-boolean v2, v3, Landroid/support/v7/app/f$f;->m:Z

    invoke-direct {p0, v3, p1}, Landroid/support/v7/app/f;->b(Landroid/support/v7/app/f$f;Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_10

    invoke-direct {p0, v3, p1}, Landroid/support/v7/app/f;->a(Landroid/support/v7/app/f$f;Landroid/view/KeyEvent;)V

    move v0, v1

    goto :goto_4

    :cond_c
    const-string v0, "AppCompatDelegate"

    const-string v2, "Couldn\'t get audio manager"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_3
    iget-boolean v0, p0, Landroid/support/v7/app/f;->M:Z

    iput-boolean v2, p0, Landroid/support/v7/app/f;->M:Z

    invoke-virtual {p0, v2}, Landroid/support/v7/app/f;->e(I)Landroid/support/v7/app/f$f;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-boolean v4, v3, Landroid/support/v7/app/f$f;->o:Z

    if-eqz v4, :cond_d

    if-nez v0, :cond_1

    invoke-virtual {p0, v3, v1}, Landroid/support/v7/app/f;->a(Landroid/support/v7/app/f$f;Z)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/f;->i:Landroid/support/v7/view/b;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/app/f;->i:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->c()V

    move v0, v1

    :goto_6
    if-eqz v0, :cond_7

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Landroid/support/v7/app/f;->a()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/support/v7/app/a;->h()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_6

    :cond_f
    move v0, v2

    goto :goto_6

    :cond_10
    move v0, v2

    goto :goto_4

    :cond_11
    move v0, v1

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_3
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public final b()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/f;->h:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/app/f;->p()V

    new-instance v1, Landroid/support/v7/view/g;

    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/a;

    invoke-virtual {v0}, Landroid/support/v7/app/a;->d()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Landroid/support/v7/view/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/f;->h:Landroid/view/MenuInflater;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/f;->h:Landroid/view/MenuInflater;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    goto :goto_0
.end method

.method public final b(I)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/f;->q()V

    iget-object v0, p0, Landroid/support/v7/app/f;->o:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Landroid/support/v7/app/f;->N:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    const-string v0, "appcompat:local_night_mode"

    iget v1, p0, Landroid/support/v7/app/f;->N:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method final b(Landroid/support/v7/view/menu/h;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/app/f;->J:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/f;->J:Z

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->h()V

    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/support/v7/app/f;->u:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/f;->J:Z

    goto :goto_0
.end method

.method public final b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/f;->q()V

    iget-object v0, p0, Landroid/support/v7/app/f;->o:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/app/f;->d:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/f;->q()V

    return-void
.end method

.method public final c(I)Z
    .locals 5

    const/16 v0, 0x6c

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    const-string v3, "AppCompatDelegate"

    const-string v4, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_0
    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/app/f;->t:Z

    if-eqz v3, :cond_2

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_1
    const/16 v3, 0x9

    if-ne p1, v3, :cond_0

    const-string v3, "AppCompatDelegate"

    const-string v4, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/app/f;->p:Z

    if-eqz v0, :cond_3

    if-ne p1, v2, :cond_3

    iput-boolean v1, p0, Landroid/support/v7/app/f;->p:Z

    :cond_3
    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    goto :goto_1

    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/app/f;->r()V

    iput-boolean v2, p0, Landroid/support/v7/app/f;->p:Z

    move v0, v2

    goto :goto_1

    :sswitch_1
    invoke-direct {p0}, Landroid/support/v7/app/f;->r()V

    iput-boolean v2, p0, Landroid/support/v7/app/f;->q:Z

    move v0, v2

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Landroid/support/v7/app/f;->r()V

    iput-boolean v2, p0, Landroid/support/v7/app/f;->r:Z

    move v0, v2

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Landroid/support/v7/app/f;->r()V

    iput-boolean v2, p0, Landroid/support/v7/app/f;->H:Z

    move v0, v2

    goto :goto_1

    :sswitch_4
    invoke-direct {p0}, Landroid/support/v7/app/f;->r()V

    iput-boolean v2, p0, Landroid/support/v7/app/f;->I:Z

    move v0, v2

    goto :goto_1

    :sswitch_5
    invoke-direct {p0}, Landroid/support/v7/app/f;->r()V

    iput-boolean v2, p0, Landroid/support/v7/app/f;->t:Z

    move v0, v2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public final d()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/app/f;->j()Z

    return-void
.end method

.method final d(I)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/f;->a()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->d(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v7/app/f;->e(I)Landroid/support/v7/app/f$f;

    move-result-object v0

    iget-boolean v1, v0, Landroid/support/v7/app/f$f;->o:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/app/f;->a(Landroid/support/v7/app/f$f;Z)V

    goto :goto_0
.end method

.method protected final e(I)Landroid/support/v7/app/f$f;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/app/f;->K:[Landroid/support/v7/app/f$f;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Landroid/support/v7/app/f$f;

    if-eqz v0, :cond_1

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, Landroid/support/v7/app/f;->K:[Landroid/support/v7/app/f$f;

    move-object v0, v1

    :cond_2
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    new-instance v1, Landroid/support/v7/app/f$f;

    invoke-direct {v1, p1}, Landroid/support/v7/app/f$f;-><init>(I)V

    aput-object v1, v0, p1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/app/f;->a()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->c(Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/f;->P:Landroid/support/v7/app/f$d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/f;->P:Landroid/support/v7/app/f$d;

    invoke-virtual {v0}, Landroid/support/v7/app/f$d;->a()V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/app/f;->a()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->c(Z)V

    :cond_0
    return-void
.end method

.method final f(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v7/app/f;->e(I)Landroid/support/v7/app/f$f;

    move-result-object v0

    iget-object v1, v0, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/h;->a(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Landroid/support/v7/app/f$f;->s:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->e()V

    iget-object v1, v0, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->clear()V

    :cond_1
    iput-boolean v4, v0, Landroid/support/v7/app/f$f;->r:Z

    iput-boolean v4, v0, Landroid/support/v7/app/f$f;->q:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Landroid/support/v7/app/f;->e(I)Landroid/support/v7/app/f$f;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-boolean v3, v0, Landroid/support/v7/app/f$f;->m:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/f;->b(Landroid/support/v7/app/f$f;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method final g(I)I
    .locals 8

    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v7/app/f;->S:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/f;->S:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/f;->T:Landroid/graphics/Rect;

    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/f;->S:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v7/app/f;->T:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Landroid/support/v7/app/f;->o:Landroid/view/ViewGroup;

    invoke-static {v5, v1, v4}, Landroid/support/v7/widget/bu;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v1, v4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_4

    move v1, p1

    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v1, :cond_b

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Landroid/support/v7/app/f;->G:Landroid/view/View;

    if-nez v1, :cond_5

    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/f;->G:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/app/f;->G:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/a/a$c;->abc_input_method_navigation_guard:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Landroid/support/v7/app/f;->o:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/app/f;->G:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    :goto_1
    iget-object v4, p0, Landroid/support/v7/app/f;->G:Landroid/view/View;

    if-eqz v4, :cond_7

    :goto_2
    iget-boolean v4, p0, Landroid/support/v7/app/f;->r:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    move p1, v2

    :cond_1
    move v7, v1

    move v1, v3

    move v3, v7

    :goto_3
    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move v0, v1

    :goto_4
    iget-object v1, p0, Landroid/support/v7/app/f;->G:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/app/f;->G:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return p1

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Landroid/support/v7/app/f;->G:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_6

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Landroid/support/v7/app/f;->G:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v3, v2

    goto :goto_2

    :cond_8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_a

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v2

    goto :goto_3

    :cond_9
    const/16 v2, 0x8

    goto :goto_5

    :cond_a
    move v3, v2

    move v1, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_4
.end method

.method public final g()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/f;->a()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/f;->h(I)V

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/app/f;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/f;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/f;->u:Z

    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/app/a;

    invoke-virtual {v0}, Landroid/support/v7/app/a;->i()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/f;->P:Landroid/support/v7/app/f$d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/f;->P:Landroid/support/v7/app/f$d;

    invoke-virtual {v0}, Landroid/support/v7/app/f$d;->a()V

    :cond_2
    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v0, p0}, Landroid/support/v4/h/f;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/f;

    if-nez v0, :cond_0

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final j()Z
    .locals 9

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget v0, p0, Landroid/support/v7/app/f;->N:I

    const/16 v6, -0x64

    if-eq v0, v6, :cond_4

    iget v6, p0, Landroid/support/v7/app/f;->N:I

    :goto_0
    sparse-switch v6, :sswitch_data_0

    move v0, v6

    :goto_1
    if-eq v0, v4, :cond_12

    iget-object v4, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v8, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, 0x30

    if-ne v0, v5, :cond_7

    const/16 v0, 0x20

    :goto_2
    if-eq v8, v0, :cond_11

    invoke-direct {p0}, Landroid/support/v7/app/f;->t()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    :cond_0
    :goto_3
    move v0, v1

    :goto_4
    if-nez v6, :cond_3

    invoke-direct {p0}, Landroid/support/v7/app/f;->s()V

    iget-object v2, p0, Landroid/support/v7/app/f;->P:Landroid/support/v7/app/f$d;

    invoke-virtual {v2}, Landroid/support/v7/app/f$d;->a()V

    iget-object v3, v2, Landroid/support/v7/app/f$d;->c:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_1

    new-instance v3, Landroid/support/v7/app/f$d$1;

    invoke-direct {v3, v2}, Landroid/support/v7/app/f$d$1;-><init>(Landroid/support/v7/app/f$d;)V

    iput-object v3, v2, Landroid/support/v7/app/f$d;->c:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v3, v2, Landroid/support/v7/app/f$d;->d:Landroid/content/IntentFilter;

    if-nez v3, :cond_2

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, v2, Landroid/support/v7/app/f$d;->d:Landroid/content/IntentFilter;

    iget-object v3, v2, Landroid/support/v7/app/f$d;->d:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/support/v7/app/f$d;->d:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/support/v7/app/f$d;->d:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object v3, v2, Landroid/support/v7/app/f$d;->e:Landroid/support/v7/app/f;

    iget-object v3, v3, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    iget-object v4, v2, Landroid/support/v7/app/f$d;->c:Landroid/content/BroadcastReceiver;

    iget-object v2, v2, Landroid/support/v7/app/f$d;->d:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    iput-boolean v1, p0, Landroid/support/v7/app/f;->O:Z

    return v0

    :cond_4
    sget v6, Landroid/support/v7/app/e;->a:I

    goto :goto_0

    :sswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v0, v7, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    const-class v7, Landroid/app/UiModeManager;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v4

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0}, Landroid/support/v7/app/f;->s()V

    iget-object v0, p0, Landroid/support/v7/app/f;->P:Landroid/support/v7/app/f$d;

    iget-object v7, v0, Landroid/support/v7/app/f$d;->a:Landroid/support/v7/app/k;

    invoke-virtual {v7}, Landroid/support/v7/app/k;->a()Z

    move-result v7

    iput-boolean v7, v0, Landroid/support/v7/app/f$d;->b:Z

    iget-boolean v0, v0, Landroid/support/v7/app/f$d;->b:Z

    if-eqz v0, :cond_6

    move v0, v5

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_1

    :sswitch_1
    move v0, v4

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0x10

    goto/16 :goto_2

    :cond_8
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, v7}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v7, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, -0x31

    or-int/2addr v0, v7

    iput v0, v2, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v4, v2, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_c

    sget-boolean v0, Landroid/support/v7/app/h;->d:Z

    if-nez v0, :cond_9

    :try_start_0
    const-class v0, Landroid/content/res/Resources;

    const-string v2, "mResourcesImpl"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/h;->c:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    sput-boolean v1, Landroid/support/v7/app/h;->d:Z

    :cond_9
    sget-object v0, Landroid/support/v7/app/h;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Landroid/support/v7/app/h;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v2, v0

    :goto_6
    if-eqz v2, :cond_0

    sget-boolean v0, Landroid/support/v7/app/h;->b:Z

    if-nez v0, :cond_a

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "mDrawableCache"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/h;->a:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_7
    sput-boolean v1, Landroid/support/v7/app/h;->b:Z

    :cond_a
    sget-object v0, Landroid/support/v7/app/h;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_b

    :try_start_3
    sget-object v0, Landroid/support/v7/app/h;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v3

    :cond_b
    :goto_8
    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/support/v7/app/h;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    const-string v2, "ResourcesFlusher"

    const-string v5, "Could not retrieve Resources#mResourcesImpl field"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_1
    move-exception v0

    const-string v2, "ResourcesFlusher"

    const-string v4, "Could not retrieve value from Resources#mResourcesImpl"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    goto :goto_6

    :catch_2
    move-exception v0

    const-string v4, "ResourcesFlusher"

    const-string v5, "Could not retrieve ResourcesImpl#mDrawableCache field"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_3
    move-exception v0

    const-string v2, "ResourcesFlusher"

    const-string v4, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_f

    sget-boolean v0, Landroid/support/v7/app/h;->b:Z

    if-nez v0, :cond_d

    :try_start_4
    const-class v0, Landroid/content/res/Resources;

    const-string v2, "mDrawableCache"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/h;->a:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_9
    sput-boolean v1, Landroid/support/v7/app/h;->b:Z

    :cond_d
    sget-object v0, Landroid/support/v7/app/h;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_e

    :try_start_5
    sget-object v0, Landroid/support/v7/app/h;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v3

    :cond_e
    :goto_a
    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/support/v7/app/h;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    :catch_4
    move-exception v0

    const-string v2, "ResourcesFlusher"

    const-string v5, "Could not retrieve Resources#mDrawableCache field"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_5
    move-exception v0

    const-string v2, "ResourcesFlusher"

    const-string v4, "Could not retrieve value from Resources#mDrawableCache"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    sget-boolean v0, Landroid/support/v7/app/h;->b:Z

    if-nez v0, :cond_10

    :try_start_6
    const-class v0, Landroid/content/res/Resources;

    const-string v2, "mDrawableCache"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/h;->a:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_b
    sput-boolean v1, Landroid/support/v7/app/h;->b:Z

    :cond_10
    sget-object v0, Landroid/support/v7/app/h;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    :try_start_7
    sget-object v0, Landroid/support/v7/app/h;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_7

    :goto_c
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto/16 :goto_3

    :catch_6
    move-exception v0

    const-string v2, "ResourcesFlusher"

    const-string v5, "Could not retrieve Resources#mDrawableCache field"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    :catch_7
    move-exception v0

    const-string v2, "ResourcesFlusher"

    const-string v4, "Could not retrieve value from Resources#mDrawableCache"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    goto :goto_c

    :cond_11
    move v0, v2

    goto/16 :goto_4

    :cond_12
    move v0, v2

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method final k()Landroid/content/Context;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/app/f;->a()Landroid/support/v7/app/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/app/a;->d()Landroid/content/Context;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method final l()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/app/f;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f;->o:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f;->o:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v4/h/r;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final m()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/f;->m:Landroid/support/v4/h/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f;->m:Landroid/support/v4/h/v;

    invoke-virtual {v0}, Landroid/support/v4/h/v;->a()V

    :cond_0
    return-void
.end method

.method final n()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/f;->e(I)Landroid/support/v7/app/f$f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/f;->a(Landroid/support/v7/app/f$f;Z)V

    return-void
.end method

.method final o()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f;->B:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->h()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/f;->k:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/f;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/app/f;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/f;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/f;->k:Landroid/widget/PopupWindow;

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/f;->m()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/f;->e(I)Landroid/support/v7/app/f$f;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_3

    iget-object v0, v0, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->close()V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/app/f;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v7/app/f;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
