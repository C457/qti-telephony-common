.class public abstract Landroid/support/v4/widget/d;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/support/v4/widget/e$a;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/d$b;,
        Landroid/support/v4/widget/d$a;
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Landroid/database/Cursor;

.field protected d:Landroid/content/Context;

.field protected e:I

.field protected f:Landroid/support/v4/widget/d$a;

.field protected g:Landroid/database/DataSetObserver;

.field protected h:Landroid/support/v4/widget/e;

.field protected i:Landroid/widget/FilterQueryProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/d;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/d;->a:Z

    iput-object p1, p0, Landroid/support/v4/widget/d;->d:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/d;->e:I

    new-instance v0, Landroid/support/v4/widget/d$a;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/d$a;-><init>(Landroid/support/v4/widget/d;)V

    iput-object v0, p0, Landroid/support/v4/widget/d;->f:Landroid/support/v4/widget/d$a;

    new-instance v0, Landroid/support/v4/widget/d$b;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/d$b;-><init>(Landroid/support/v4/widget/d;)V

    iput-object v0, p0, Landroid/support/v4/widget/d;->g:Landroid/database/DataSetObserver;

    return-void
.end method


# virtual methods
.method public final a()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/d;->i:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/d;->i:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public abstract a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/d;->f:Landroid/support/v4/widget/d$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/d;->f:Landroid/support/v4/widget/d$a;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/d;->g:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/d;->g:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_3
    iput-object p1, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    if-eqz p1, :cond_6

    iget-object v1, p0, Landroid/support/v4/widget/d;->f:Landroid/support/v4/widget/d$a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/widget/d;->f:Landroid/support/v4/widget/d$a;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_4
    iget-object v1, p0, Landroid/support/v4/widget/d;->g:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v4/widget/d;->g:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_5
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/d;->e:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/widget/d;->a:Z

    invoke-virtual {p0}, Landroid/support/v4/widget/d;->notifyDataSetChanged()V

    goto :goto_0

    :cond_6
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/d;->e:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/widget/d;->a:Z

    invoke-virtual {p0}, Landroid/support/v4/widget/d;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public abstract a(Landroid/view/View;Landroid/database/Cursor;)V
.end method

.method public b(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/d;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final b()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/d;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/widget/d;->a:Z

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/widget/d;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/d;->d:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Landroid/support/v4/widget/d;->b(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0}, Landroid/support/v4/widget/d;->a(Landroid/view/View;Landroid/database/Cursor;)V

    :goto_0
    return-object p2

    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/d;->h:Landroid/support/v4/widget/e;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/e;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/e;-><init>(Landroid/support/v4/widget/e$a;)V

    iput-object v0, p0, Landroid/support/v4/widget/d;->h:Landroid/support/v4/widget/e;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/d;->h:Landroid/support/v4/widget/e;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3

    const-wide/16 v0, 0x0

    iget-boolean v2, p0, Landroid/support/v4/widget/d;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    iget v1, p0, Landroid/support/v4/widget/d;->e:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/widget/d;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should only be called when the cursor is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "couldn\'t move cursor to position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/d;->d:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Landroid/support/v4/widget/d;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0}, Landroid/support/v4/widget/d;->a(Landroid/view/View;Landroid/database/Cursor;)V

    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
