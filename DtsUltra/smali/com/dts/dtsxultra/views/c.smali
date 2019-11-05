.class public Lcom/dts/dtsxultra/views/c;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtsxultra/views/c$b;,
        Lcom/dts/dtsxultra/views/c$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dts/dtssdk/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/HashMap;
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

.field private f:Z

.field private g:Landroid/content/res/ColorStateList;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/views/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/views/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dts/dtsxultra/views/c;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dts/dtsxultra/views/c;->h:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/views/c;->c:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/dts/dtsxultra/views/c;->d:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/views/c;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/views/c;->e:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Lcom/dts/dtssdk/util/d;)I
    .locals 2

    sget-object v0, Lcom/dts/dtsxultra/views/c$2;->a:[I

    invoke-virtual {p0}, Lcom/dts/dtssdk/util/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0e005f

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0e0060

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0e0061

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0e0062

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0e0063

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0e0064

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0e0065

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0e0066

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0e0067

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic a(Lcom/dts/dtsxultra/views/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dts/dtsxultra/views/c;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/dts/dtsxultra/views/c;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/c;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/views/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/dts/dtsxultra/views/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dts/dtsxultra/views/c;->h:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 4

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
    iget-object v0, p0, Lcom/dts/dtsxultra/views/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/dts/dtsxultra/views/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/j;

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/dts/dtssdk/a/j;->a:Lcom/dts/dtssdk/a/l;

    if-eqz v3, :cond_3

    iget-object v0, v0, Lcom/dts/dtssdk/a/j;->a:Lcom/dts/dtssdk/a/l;

    iget-object v0, v0, Lcom/dts/dtssdk/a/l;->a:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/dts/dtsxultra/views/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/dts/dtsxultra/views/c;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/views/c;->a:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/dts/dtsxultra/views/c;->e:Ljava/util/HashMap;

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
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/dts/dtsxultra/views/c;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/dts/dtsxultra/views/c$a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast v0, Lcom/dts/dtsxultra/views/c$a;

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/dts/dtsxultra/views/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/j;

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/j;->a()Lcom/dts/dtssdk/util/d;

    move-result-object v2

    invoke-static {v2}, Lcom/dts/dtsxultra/views/c;->a(Lcom/dts/dtssdk/util/d;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v3, v1, Lcom/dts/dtsxultra/views/c$a;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v2, v1, Lcom/dts/dtsxultra/views/c$a;->a:Lcom/dts/dtsxultra/views/CheckableRelativeLayout;

    iget-object v3, v1, Lcom/dts/dtsxultra/views/c$a;->e:Landroid/widget/RadioButton;

    invoke-virtual {v2, v3}, Lcom/dts/dtsxultra/views/CheckableRelativeLayout;->setRadioButton(Landroid/widget/RadioButton;)V

    iget-object v2, v1, Lcom/dts/dtsxultra/views/c$a;->d:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v1, Lcom/dts/dtsxultra/views/c$a;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dts/dtsxultra/views/c;->d:Landroid/content/Context;

    const/4 v3, 0x2

    new-instance v4, Lcom/dts/dtsxultra/views/c$1;

    invoke-direct {v4, p0, v1}, Lcom/dts/dtsxultra/views/c$1;-><init>(Lcom/dts/dtsxultra/views/c;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/dts/dtssdk/a/j;->a(Landroid/content/Context;ILcom/dts/dtssdk/c/a;)V

    :goto_2
    return-object p2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dts/dtsxultra/views/c;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0b003b

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/dts/dtsxultra/views/c$a;

    invoke-direct {v1, p0, v4}, Lcom/dts/dtsxultra/views/c$a;-><init>(Lcom/dts/dtsxultra/views/c;B)V

    const v0, 0x7f080124

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/CheckableRelativeLayout;

    iput-object v0, v1, Lcom/dts/dtsxultra/views/c$a;->a:Lcom/dts/dtsxultra/views/CheckableRelativeLayout;

    const v0, 0x7f080128

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/dts/dtsxultra/views/c$a;->b:Landroid/widget/ImageView;

    const v0, 0x7f08012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/dts/dtsxultra/views/c$a;->c:Landroid/widget/TextView;

    const v0, 0x7f08012a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/dts/dtsxultra/views/c$a;->d:Landroid/widget/TextView;

    const v0, 0x7f080129

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/dts/dtsxultra/views/c$a;->e:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/dts/dtsxultra/views/c$b;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast v0, Lcom/dts/dtsxultra/views/c$b;

    move-object v1, v0

    :goto_4
    iget-object v0, p0, Lcom/dts/dtsxultra/views/c;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/c$b;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/dts/dtsxultra/views/c;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0b003c

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/dts/dtsxultra/views/c$b;

    invoke-direct {v1, p0, v4}, Lcom/dts/dtsxultra/views/c$b;-><init>(Lcom/dts/dtsxultra/views/c;B)V

    const v0, 0x7f080120

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/dts/dtsxultra/views/c$b;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dts/dtsxultra/views/c;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
