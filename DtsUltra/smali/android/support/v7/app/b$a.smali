.class public final Landroid/support/v7/app/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/support/v7/app/AlertController$a;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/app/b;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/app/AlertController$a;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Landroid/support/v7/app/b;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertController$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/b$a;->a:Landroid/support/v7/app/AlertController$a;

    iput p2, p0, Landroid/support/v7/app/b$a;->b:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/app/b;
    .locals 15

    new-instance v13, Landroid/support/v7/app/b;

    iget-object v0, p0, Landroid/support/v7/app/b$a;->a:Landroid/support/v7/app/AlertController$a;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$a;->a:Landroid/content/Context;

    iget v1, p0, Landroid/support/v7/app/b$a;->b:I

    invoke-direct {v13, v0, v1}, Landroid/support/v7/app/b;-><init>(Landroid/content/Context;I)V

    iget-object v14, p0, Landroid/support/v7/app/b$a;->a:Landroid/support/v7/app/AlertController$a;

    iget-object v0, v13, Landroid/support/v7/app/b;->a:Landroid/support/v7/app/AlertController;

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->g:Landroid/view/View;

    if-eqz v1, :cond_10

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->g:Landroid/view/View;

    iput-object v1, v0, Landroid/support/v7/app/AlertController;->G:Landroid/view/View;

    :cond_0
    :goto_0
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->h:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->h:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/support/v7/app/AlertController;->f:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/support/v7/app/AlertController;->F:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/support/v7/app/AlertController;->F:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->i:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, -0x1

    iget-object v2, v14, Landroid/support/v7/app/AlertController$a;->i:Ljava/lang/CharSequence;

    iget-object v3, v14, Landroid/support/v7/app/AlertController$a;->k:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x0

    iget-object v5, v14, Landroid/support/v7/app/AlertController$a;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->l:Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, -0x2

    iget-object v2, v14, Landroid/support/v7/app/AlertController$a;->l:Ljava/lang/CharSequence;

    iget-object v3, v14, Landroid/support/v7/app/AlertController$a;->n:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x0

    iget-object v5, v14, Landroid/support/v7/app/AlertController$a;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->o:Ljava/lang/CharSequence;

    if-nez v1, :cond_6

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, -0x3

    iget-object v2, v14, Landroid/support/v7/app/AlertController$a;->o:Ljava/lang/CharSequence;

    iget-object v3, v14, Landroid/support/v7/app/AlertController$a;->q:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x0

    iget-object v5, v14, Landroid/support/v7/app/AlertController$a;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->v:[Ljava/lang/CharSequence;

    if-nez v1, :cond_8

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->K:Landroid/database/Cursor;

    if-nez v1, :cond_8

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->w:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_c

    :cond_8
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->b:Landroid/view/LayoutInflater;

    iget v2, v0, Landroid/support/v7/app/AlertController;->L:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/app/AlertController$RecycleListView;

    iget-boolean v1, v14, Landroid/support/v7/app/AlertController$a;->G:Z

    if-eqz v1, :cond_16

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->K:Landroid/database/Cursor;

    if-nez v1, :cond_15

    new-instance v1, Landroid/support/v7/app/AlertController$a$1;

    iget-object v3, v14, Landroid/support/v7/app/AlertController$a;->a:Landroid/content/Context;

    iget v4, v0, Landroid/support/v7/app/AlertController;->M:I

    iget-object v5, v14, Landroid/support/v7/app/AlertController$a;->v:[Ljava/lang/CharSequence;

    move-object v2, v14

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/app/AlertController$a$1;-><init>(Landroid/support/v7/app/AlertController$a;Landroid/content/Context;I[Ljava/lang/CharSequence;Landroid/support/v7/app/AlertController$RecycleListView;)V

    :goto_1
    iput-object v1, v0, Landroid/support/v7/app/AlertController;->H:Landroid/widget/ListAdapter;

    iget v1, v14, Landroid/support/v7/app/AlertController$a;->I:I

    iput v1, v0, Landroid/support/v7/app/AlertController;->I:I

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->x:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_1a

    new-instance v1, Landroid/support/v7/app/AlertController$a$3;

    invoke-direct {v1, v14, v0}, Landroid/support/v7/app/AlertController$a$3;-><init>(Landroid/support/v7/app/AlertController$a;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v6, v1}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_9
    :goto_2
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->N:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_a

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->N:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_a
    iget-boolean v1, v14, Landroid/support/v7/app/AlertController$a;->H:Z

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/support/v7/app/AlertController$RecycleListView;->setChoiceMode(I)V

    :cond_b
    :goto_3
    iput-object v6, v0, Landroid/support/v7/app/AlertController;->g:Landroid/widget/ListView;

    :cond_c
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->z:Landroid/view/View;

    if-eqz v1, :cond_1d

    iget-boolean v1, v14, Landroid/support/v7/app/AlertController$a;->E:Z

    if-eqz v1, :cond_1c

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->z:Landroid/view/View;

    iget v2, v14, Landroid/support/v7/app/AlertController$a;->A:I

    iget v3, v14, Landroid/support/v7/app/AlertController$a;->B:I

    iget v4, v14, Landroid/support/v7/app/AlertController$a;->C:I

    iget v5, v14, Landroid/support/v7/app/AlertController$a;->D:I

    iput-object v1, v0, Landroid/support/v7/app/AlertController;->h:Landroid/view/View;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/app/AlertController;->i:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController;->n:Z

    iput v2, v0, Landroid/support/v7/app/AlertController;->j:I

    iput v3, v0, Landroid/support/v7/app/AlertController;->k:I

    iput v4, v0, Landroid/support/v7/app/AlertController;->l:I

    iput v5, v0, Landroid/support/v7/app/AlertController;->m:I

    :cond_d
    :goto_4
    iget-object v0, p0, Landroid/support/v7/app/b$a;->a:Landroid/support/v7/app/AlertController$a;

    iget-boolean v0, v0, Landroid/support/v7/app/AlertController$a;->r:Z

    invoke-virtual {v13, v0}, Landroid/support/v7/app/b;->setCancelable(Z)V

    iget-object v0, p0, Landroid/support/v7/app/b$a;->a:Landroid/support/v7/app/AlertController$a;

    iget-boolean v0, v0, Landroid/support/v7/app/AlertController$a;->r:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/support/v7/app/b;->setCanceledOnTouchOutside(Z)V

    :cond_e
    iget-object v0, p0, Landroid/support/v7/app/b$a;->a:Landroid/support/v7/app/AlertController$a;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$a;->s:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v13, v0}, Landroid/support/v7/app/b;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Landroid/support/v7/app/b$a;->a:Landroid/support/v7/app/AlertController$a;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$a;->t:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v13, v0}, Landroid/support/v7/app/b;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Landroid/support/v7/app/b$a;->a:Landroid/support/v7/app/AlertController$a;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$a;->u:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/app/b$a;->a:Landroid/support/v7/app/AlertController$a;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$a;->u:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v13, v0}, Landroid/support/v7/app/b;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_f
    return-object v13

    :cond_10
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_11

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertController;->a(Ljava/lang/CharSequence;)V

    :cond_11
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_12

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->d:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/support/v7/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iput v2, v0, Landroid/support/v7/app/AlertController;->B:I

    iget-object v2, v0, Landroid/support/v7/app/AlertController;->D:Landroid/widget/ImageView;

    if-eqz v2, :cond_12

    if-eqz v1, :cond_14

    iget-object v2, v0, Landroid/support/v7/app/AlertController;->D:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Landroid/support/v7/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_12
    :goto_5
    iget v1, v14, Landroid/support/v7/app/AlertController$a;->c:I

    if-eqz v1, :cond_13

    iget v1, v14, Landroid/support/v7/app/AlertController$a;->c:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertController;->a(I)V

    :cond_13
    iget v1, v14, Landroid/support/v7/app/AlertController$a;->e:I

    if-eqz v1, :cond_0

    iget v1, v14, Landroid/support/v7/app/AlertController$a;->e:I

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v3, v0, Landroid/support/v7/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertController;->a(I)V

    goto/16 :goto_0

    :cond_14
    iget-object v1, v0, Landroid/support/v7/app/AlertController;->D:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_15
    new-instance v2, Landroid/support/v7/app/AlertController$a$2;

    iget-object v4, v14, Landroid/support/v7/app/AlertController$a;->a:Landroid/content/Context;

    iget-object v5, v14, Landroid/support/v7/app/AlertController$a;->K:Landroid/database/Cursor;

    move-object v3, v14

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/app/AlertController$a$2;-><init>(Landroid/support/v7/app/AlertController$a;Landroid/content/Context;Landroid/database/Cursor;Landroid/support/v7/app/AlertController$RecycleListView;Landroid/support/v7/app/AlertController;)V

    move-object v1, v2

    goto/16 :goto_1

    :cond_16
    iget-boolean v1, v14, Landroid/support/v7/app/AlertController$a;->H:Z

    if-eqz v1, :cond_17

    iget v9, v0, Landroid/support/v7/app/AlertController;->N:I

    :goto_6
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->K:Landroid/database/Cursor;

    if-eqz v1, :cond_18

    new-instance v7, Landroid/widget/SimpleCursorAdapter;

    iget-object v8, v14, Landroid/support/v7/app/AlertController$a;->a:Landroid/content/Context;

    iget-object v10, v14, Landroid/support/v7/app/AlertController$a;->K:Landroid/database/Cursor;

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, v14, Landroid/support/v7/app/AlertController$a;->L:Ljava/lang/String;

    aput-object v2, v11, v1

    const/4 v1, 0x1

    new-array v12, v1, [I

    const/4 v1, 0x0

    const v2, 0x1020014

    aput v2, v12, v1

    invoke-direct/range {v7 .. v12}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object v1, v7

    goto/16 :goto_1

    :cond_17
    iget v9, v0, Landroid/support/v7/app/AlertController;->O:I

    goto :goto_6

    :cond_18
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->w:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_19

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->w:Landroid/widget/ListAdapter;

    goto/16 :goto_1

    :cond_19
    new-instance v1, Landroid/support/v7/app/AlertController$c;

    iget-object v2, v14, Landroid/support/v7/app/AlertController$a;->a:Landroid/content/Context;

    iget-object v3, v14, Landroid/support/v7/app/AlertController$a;->v:[Ljava/lang/CharSequence;

    invoke-direct {v1, v2, v9, v3}, Landroid/support/v7/app/AlertController$c;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_1a
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->J:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_9

    new-instance v1, Landroid/support/v7/app/AlertController$a$4;

    invoke-direct {v1, v14, v6, v0}, Landroid/support/v7/app/AlertController$a$4;-><init>(Landroid/support/v7/app/AlertController$a;Landroid/support/v7/app/AlertController$RecycleListView;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v6, v1}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_2

    :cond_1b
    iget-boolean v1, v14, Landroid/support/v7/app/AlertController$a;->G:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/support/v7/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto/16 :goto_3

    :cond_1c
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->z:Landroid/view/View;

    iput-object v1, v0, Landroid/support/v7/app/AlertController;->h:Landroid/view/View;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/app/AlertController;->i:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController;->n:Z

    goto/16 :goto_4

    :cond_1d
    iget v1, v14, Landroid/support/v7/app/AlertController$a;->y:I

    if-eqz v1, :cond_d

    iget v1, v14, Landroid/support/v7/app/AlertController$a;->y:I

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v7/app/AlertController;->h:Landroid/view/View;

    iput v1, v0, Landroid/support/v7/app/AlertController;->i:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController;->n:Z

    goto/16 :goto_4
.end method
