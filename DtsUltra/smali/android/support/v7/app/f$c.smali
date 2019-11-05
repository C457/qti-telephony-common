.class final Landroid/support/v7/app/f$c;
.super Landroid/support/v7/view/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/f;


# direct methods
.method constructor <init>(Landroid/support/v7/app/f;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/f$c;->a:Landroid/support/v7/app/f;

    invoke-direct {p0, p2}, Landroid/support/v7/view/i;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method

.method private a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v4, Landroid/support/v7/view/f$a;

    iget-object v0, p0, Landroid/support/v7/app/f$c;->a:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    invoke-direct {v4, v0, p1}, Landroid/support/v7/view/f$a;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    iget-object v5, p0, Landroid/support/v7/app/f$c;->a:Landroid/support/v7/app/f;

    iget-object v0, v5, Landroid/support/v7/app/f;->i:Landroid/support/v7/view/b;

    if-eqz v0, :cond_0

    iget-object v0, v5, Landroid/support/v7/app/f;->i:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->c()V

    :cond_0
    new-instance v6, Landroid/support/v7/app/f$b;

    invoke-direct {v6, v5, v4}, Landroid/support/v7/app/f$b;-><init>(Landroid/support/v7/app/f;Landroid/support/v7/view/b$a;)V

    invoke-virtual {v5}, Landroid/support/v7/app/f;->a()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v6}, Landroid/support/v7/app/a;->a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;

    move-result-object v0

    iput-object v0, v5, Landroid/support/v7/app/f;->i:Landroid/support/v7/view/b;

    :cond_1
    iget-object v0, v5, Landroid/support/v7/app/f;->i:Landroid/support/v7/view/b;

    if-nez v0, :cond_6

    invoke-virtual {v5}, Landroid/support/v7/app/f;->m()V

    iget-object v0, v5, Landroid/support/v7/app/f;->i:Landroid/support/v7/view/b;

    if-eqz v0, :cond_2

    iget-object v0, v5, Landroid/support/v7/app/f;->i:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->c()V

    :cond_2
    iget-object v0, v5, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    if-nez v0, :cond_3

    iget-boolean v0, v5, Landroid/support/v7/app/f;->s:Z

    if-eqz v0, :cond_8

    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, v5, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v8, Landroid/support/v7/a/a$a;->actionBarTheme:I

    invoke-virtual {v0, v8, v7, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_7

    iget-object v8, v5, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v0, v7, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v0, Landroid/support/v7/view/d;

    iget-object v9, v5, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    invoke-direct {v0, v9, v2}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :goto_0
    new-instance v8, Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v8, v0}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v5, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    new-instance v8, Landroid/widget/PopupWindow;

    sget v9, Landroid/support/v7/a/a$a;->actionModePopupWindowStyle:I

    invoke-direct {v8, v0, v3, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, v5, Landroid/support/v7/app/f;->k:Landroid/widget/PopupWindow;

    iget-object v8, v5, Landroid/support/v7/app/f;->k:Landroid/widget/PopupWindow;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/support/v4/widget/i;->a(Landroid/widget/PopupWindow;I)V

    iget-object v8, v5, Landroid/support/v7/app/f;->k:Landroid/widget/PopupWindow;

    iget-object v9, v5, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v8, v5, Landroid/support/v7/app/f;->k:Landroid/widget/PopupWindow;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v9, Landroid/support/v7/a/a$a;->actionBarSize:I

    invoke-virtual {v8, v9, v7, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v7, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iget-object v7, v5, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object v0, v5, Landroid/support/v7/app/f;->k:Landroid/widget/PopupWindow;

    const/4 v7, -0x2

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v0, Landroid/support/v7/app/f$6;

    invoke-direct {v0, v5}, Landroid/support/v7/app/f$6;-><init>(Landroid/support/v7/app/f;)V

    iput-object v0, v5, Landroid/support/v7/app/f;->l:Ljava/lang/Runnable;

    :cond_3
    :goto_1
    iget-object v0, v5, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Landroid/support/v7/app/f;->m()V

    iget-object v0, v5, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->b()V

    new-instance v7, Landroid/support/v7/view/e;

    iget-object v0, v5, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v5, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v0, v5, Landroid/support/v7/app/f;->k:Landroid/widget/PopupWindow;

    if-nez v0, :cond_9

    move v0, v1

    :goto_2
    invoke-direct {v7, v8, v9, v6, v0}, Landroid/support/v7/view/e;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/b$a;Z)V

    invoke-virtual {v7}, Landroid/support/v7/view/b;->b()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v7}, Landroid/support/v7/view/b;->d()V

    iget-object v0, v5, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionBarContextView;->a(Landroid/support/v7/view/b;)V

    iput-object v7, v5, Landroid/support/v7/app/f;->i:Landroid/support/v7/view/b;

    invoke-virtual {v5}, Landroid/support/v7/app/f;->l()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v5, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, v5, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0}, Landroid/support/v4/h/r;->m(Landroid/view/View;)Landroid/support/v4/h/v;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/support/v4/h/v;->a(F)Landroid/support/v4/h/v;

    move-result-object v0

    iput-object v0, v5, Landroid/support/v7/app/f;->m:Landroid/support/v4/h/v;

    iget-object v0, v5, Landroid/support/v7/app/f;->m:Landroid/support/v4/h/v;

    new-instance v1, Landroid/support/v7/app/f$7;

    invoke-direct {v1, v5}, Landroid/support/v7/app/f$7;-><init>(Landroid/support/v7/app/f;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/h/v;->a(Landroid/support/v4/h/w;)Landroid/support/v4/h/v;

    :cond_4
    :goto_3
    iget-object v0, v5, Landroid/support/v7/app/f;->k:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_5

    iget-object v0, v5, Landroid/support/v7/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, v5, Landroid/support/v7/app/f;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_4
    iget-object v0, v5, Landroid/support/v7/app/f;->i:Landroid/support/v7/view/b;

    iput-object v0, v5, Landroid/support/v7/app/f;->i:Landroid/support/v7/view/b;

    :cond_6
    iget-object v0, v5, Landroid/support/v7/app/f;->i:Landroid/support/v7/view/b;

    if-eqz v0, :cond_c

    invoke-virtual {v4, v0}, Landroid/support/v7/view/f$a;->b(Landroid/support/v7/view/b;)Landroid/view/ActionMode;

    move-result-object v0

    :goto_5
    return-object v0

    :cond_7
    iget-object v0, v5, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    goto/16 :goto_0

    :cond_8
    iget-object v0, v5, Landroid/support/v7/app/f;->o:Landroid/view/ViewGroup;

    sget v7, Landroid/support/v7/a/a$f;->action_mode_bar_stub:I

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewStubCompat;

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Landroid/support/v7/app/f;->k()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, v5, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    iget-object v0, v5, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, v5, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, v5, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    iget-object v0, v5, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, v5, Landroid/support/v7/app/f;->j:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/h/r;->q(Landroid/view/View;)V

    goto :goto_3

    :cond_b
    iput-object v3, v5, Landroid/support/v7/app/f;->i:Landroid/support/v7/view/b;

    goto :goto_4

    :cond_c
    move-object v0, v3

    goto :goto_5
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/f$c;->a:Landroid/support/v7/app/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/view/i;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/view/i;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f$c;->a:Landroid/support/v7/app/f;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/app/f;->a(ILandroid/view/KeyEvent;)Z

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

.method public final onContentChanged()V
    .locals 0

    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    instance-of v0, p2, Landroid/support/v7/view/menu/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/i;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Landroid/support/v7/view/i;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object v0, p0, Landroid/support/v7/app/f$c;->a:Landroid/support/v7/app/f;

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/f;->a()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->d(Z)V

    :cond_0
    return v2
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/view/i;->onPanelClosed(ILandroid/view/Menu;)V

    iget-object v0, p0, Landroid/support/v7/app/f$c;->a:Landroid/support/v7/app/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->d(I)V

    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v0, p3, Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Landroid/support/v7/view/menu/h;

    move-object v2, v0

    :goto_0
    if-nez p1, :cond_2

    if-nez v2, :cond_2

    move v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/support/v7/view/menu/h;->k:Z

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/i;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v2, :cond_0

    iput-boolean v1, v2, Landroid/support/v7/view/menu/h;->k:Z

    goto :goto_1
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/app/f$c;->a:Landroid/support/v7/app/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/f;->e(I)Landroid/support/v7/app/f$f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/app/f$f;->j:Landroid/support/v7/view/menu/h;

    invoke-super {p0, p1, v0, p3}, Landroid/support/v7/view/i;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/i;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/f$c;->a:Landroid/support/v7/app/f;

    iget-boolean v0, v0, Landroid/support/v7/app/f;->n:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/support/v7/app/f$c;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/view/i;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/f$c;->a:Landroid/support/v7/app/f;

    iget-boolean v0, v0, Landroid/support/v7/app/f;->n:Z

    if-eqz v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/i;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, p1}, Landroid/support/v7/app/f$c;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
