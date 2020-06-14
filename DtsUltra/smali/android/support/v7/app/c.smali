.class public Landroid/support/v7/app/c;
.super Landroid/support/v4/app/f;

# interfaces
.implements Landroid/support/v4/app/ac$a;
.implements Landroid/support/v7/app/d;


# instance fields
.field private j:Landroid/support/v7/app/e;

.field private k:I

.field private l:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/f;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/c;->k:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->a(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/e;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Landroid/support/v4/app/t;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public closeOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/app/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/f;->closeOptionsMenu()V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->g()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/a;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/support/v7/app/a;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/f;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 6

    const/16 v5, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/support/v4/app/t;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_6

    invoke-static {p0}, Landroid/support/v4/app/ac;->a(Landroid/content/Context;)Landroid/support/v4/app/ac;

    move-result-object v4

    const/4 v0, 0x0

    instance-of v3, p0, Landroid/support/v4/app/ac$a;

    if-eqz v3, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/ac$a;

    invoke-interface {v0}, Landroid/support/v4/app/ac$a;->b()Landroid/content/Intent;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_9

    invoke-static {p0}, Landroid/support/v4/app/t;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, v4, Landroid/support/v4/app/ac;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_1
    invoke-virtual {v4, v0}, Landroid/support/v4/app/ac;->a(Landroid/content/ComponentName;)Landroid/support/v4/app/ac;

    iget-object v0, v4, Landroid/support/v4/app/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, v4, Landroid/support/v4/app/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, v4, Landroid/support/v4/app/ac;->a:Ljava/util/ArrayList;

    iget-object v3, v4, Landroid/support/v4/app/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/Intent;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    aget-object v5, v0, v2

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v5, 0x1000c000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, v4, Landroid/support/v4/app/ac;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/support/v4/a/a;->a(Landroid/content/Context;[Landroid/content/Intent;)Z

    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v0, v1

    :goto_3
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v7/app/c;->finish()V

    goto :goto_2

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_7

    invoke-virtual {p0, v3}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    goto :goto_2

    :cond_7
    const/high16 v0, 0x4000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    move-object v3, v0

    goto/16 :goto_1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->a(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final g()Landroid/support/v7/app/e;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c;->j:Landroid/support/v7/app/e;

    if-nez v0, :cond_0

    invoke-static {p0, p0}, Landroid/support/v7/app/e;->a(Landroid/app/Activity;Landroid/support/v7/app/d;)Landroid/support/v7/app/e;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/c;->j:Landroid/support/v7/app/e;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/c;->j:Landroid/support/v7/app/e;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->b()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/c;->l:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/br;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/br;

    invoke-super {p0}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/br;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/v7/app/c;->l:Landroid/content/res/Resources;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/c;->l:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/c;->l:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->g()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/f;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v7/app/c;->l:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/c;->l:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->i()V

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->a(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/support/v7/app/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/app/c;->k:I

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/c;->k:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/app/c;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/f;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_1
    iget v0, p0, Landroid/support/v7/app/c;->k:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/c;->setTheme(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/f;->onDestroy()V

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->h()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/f;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/f;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/app/a;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/c;->f()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/f;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/f;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/f;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->c()V

    return-void
.end method

.method protected onPostResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/f;->onPostResume()V

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->f()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/f;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/f;->onStart()V

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->d()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/f;->onStop()V

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->e()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/f;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/app/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/f;->openOptionsMenu()V

    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->b(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->a(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/e;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/f;->setTheme(I)V

    iput p1, p0, Landroid/support/v7/app/c;->k:I

    return-void
.end method
