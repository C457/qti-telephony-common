.class public Lcom/dts/dtsxultra/views/a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtsxultra/views/a$b;,
        Lcom/dts/dtsxultra/views/a$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/content/Context;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/views/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/views/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean v0, p0, Lcom/dts/dtsxultra/views/a;->g:Z

    iput-boolean v0, p0, Lcom/dts/dtsxultra/views/a;->c:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/views/a;->e:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/dts/dtsxultra/views/a;->f:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/views/a;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/views/a;->b:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/views/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dts/dtsxultra/views/a;->g:Z

    return v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/views/a;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final a(Lcom/dts/dtssdk/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/dts/dtsxultra/views/a;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/dts/dtsxultra/views/a;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/views/a;->a(Lcom/dts/dtssdk/a/a;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)I
    .locals 3

    const/4 v2, -0x1

    if-nez p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/a;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/dts/dtssdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final b(Lcom/dts/dtssdk/a/a;)V
    .locals 3

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/dts/dtssdk/a/a;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/dts/dtssdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/dts/dtsxultra/views/a;->a(Lcom/dts/dtssdk/a/a;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/dts/dtsxultra/views/a;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/16 v8, 0x8

    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Lcom/dts/dtsxultra/views/a;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/dts/dtsxultra/views/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v0, Lcom/dts/dtsxultra/views/a$a;

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/a;

    iget-object v2, v0, Lcom/dts/dtssdk/a/a;->b:Lcom/dts/dtssdk/a/i;

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/dts/dtsxultra/views/a$a;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v2, v1, Lcom/dts/dtsxultra/views/a$a;->b:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/dts/dtssdk/a/a;->f:Lcom/dts/dtssdk/a/a$a;

    iget-object v4, p0, Lcom/dts/dtsxultra/views/a;->f:Landroid/content/Context;

    const/4 v5, 0x2

    new-instance v6, Lcom/dts/dtsxultra/views/a$1;

    invoke-direct {v6, p0, v0, v2, v3}, Lcom/dts/dtsxultra/views/a$1;-><init>(Lcom/dts/dtsxultra/views/a;Lcom/dts/dtssdk/a/a;Landroid/widget/ImageView;Lcom/dts/dtssdk/a/a$a;)V

    invoke-virtual {v0, v4, v5, v6}, Lcom/dts/dtssdk/a/a;->a(Landroid/content/Context;ILcom/dts/dtssdk/c/a;)V

    iget-object v2, v0, Lcom/dts/dtssdk/a/a;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, v1, Lcom/dts/dtsxultra/views/a$a;->c:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/dts/dtssdk/a/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    iget-boolean v0, p0, Lcom/dts/dtsxultra/views/a;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/dts/dtsxultra/views/a$a;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, v1, Lcom/dts/dtsxultra/views/a$a;->a:Lcom/dts/dtsxultra/views/CheckableRelativeLayout;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/a$a;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Lcom/dts/dtsxultra/views/CheckableRelativeLayout;->setRadioButton(Landroid/widget/RadioButton;)V

    :goto_4
    return-object p2

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f0b003b

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/dts/dtsxultra/views/a$a;

    invoke-direct {v1, p0, v7}, Lcom/dts/dtsxultra/views/a$a;-><init>(Lcom/dts/dtsxultra/views/a;B)V

    const v0, 0x7f080124

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/CheckableRelativeLayout;

    iput-object v0, v1, Lcom/dts/dtsxultra/views/a$a;->a:Lcom/dts/dtsxultra/views/CheckableRelativeLayout;

    const v0, 0x7f080128

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/dts/dtsxultra/views/a$a;->b:Landroid/widget/ImageView;

    const v0, 0x7f08012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/dts/dtsxultra/views/a$a;->c:Landroid/widget/TextView;

    const v0, 0x7f08012a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/dts/dtsxultra/views/a$a;->d:Landroid/widget/TextView;

    const v0, 0x7f080129

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/dts/dtsxultra/views/a$a;->e:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    iget-object v3, v1, Lcom/dts/dtsxultra/views/a$a;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v1, Lcom/dts/dtsxultra/views/a$a;->d:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/dts/dtssdk/a/i;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    iget-object v2, v1, Lcom/dts/dtsxultra/views/a$a;->c:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/dts/dtssdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    iget-object v0, v1, Lcom/dts/dtsxultra/views/a$a;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_4

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/dts/dtsxultra/views/a$b;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    check-cast v0, Lcom/dts/dtsxultra/views/a$b;

    move-object v1, v0

    :goto_6
    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/a$b;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_6
    move-object v0, v1

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f0b003c

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/dts/dtsxultra/views/a$b;

    invoke-direct {v1, p0, v7}, Lcom/dts/dtsxultra/views/a$b;-><init>(Lcom/dts/dtsxultra/views/a;B)V

    const v0, 0x7f080120

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/dts/dtsxultra/views/a$b;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dts/dtsxultra/views/a;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
