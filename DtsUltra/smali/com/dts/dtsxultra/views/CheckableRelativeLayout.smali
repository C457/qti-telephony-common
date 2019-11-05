.class public Lcom/dts/dtsxultra/views/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private a:Z

.field private b:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dts/dtsxultra/views/CheckableRelativeLayout;->a:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/dts/dtsxultra/views/CheckableRelativeLayout;->a:Z

    iget-object v0, p0, Lcom/dts/dtsxultra/views/CheckableRelativeLayout;->b:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/views/CheckableRelativeLayout;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setRadioButton(Landroid/widget/RadioButton;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/views/CheckableRelativeLayout;->b:Landroid/widget/RadioButton;

    return-void
.end method

.method public toggle()V
    .locals 0

    return-void
.end method
