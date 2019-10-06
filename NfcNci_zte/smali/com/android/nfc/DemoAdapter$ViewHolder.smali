.class public Lcom/android/nfc/DemoAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DemoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/DemoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public cbCheck:Landroid/widget/CheckBox;

.field public data:Ljava/lang/Object;

.field public ivIcon:Landroid/widget/ImageView;

.field public tvOnhost:Landroid/widget/TextView;

.field public tvSpace:Landroid/widget/TextView;

.field public tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/DemoAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 225
    iput-object v0, p0, Lcom/android/nfc/DemoAdapter$ViewHolder;->cbCheck:Landroid/widget/CheckBox;

    .line 226
    iput-object v0, p0, Lcom/android/nfc/DemoAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    .line 227
    iput-object v0, p0, Lcom/android/nfc/DemoAdapter$ViewHolder;->tvSpace:Landroid/widget/TextView;

    .line 228
    iput-object v0, p0, Lcom/android/nfc/DemoAdapter$ViewHolder;->tvOnhost:Landroid/widget/TextView;

    .line 229
    iput-object v0, p0, Lcom/android/nfc/DemoAdapter$ViewHolder;->data:Ljava/lang/Object;

    return-void
.end method
