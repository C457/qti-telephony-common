.class public Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
.super Ljava/lang/Object;
.source "HandoverDataParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverDataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncomingHandoverData"
.end annotation


# instance fields
.field public final handoverData:Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

.field public final handoverSelect:Landroid/nfc/NdefMessage;


# direct methods
.method public constructor <init>(Landroid/nfc/NdefMessage;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)V
    .locals 0
    .param p1, "handoverSelect"    # Landroid/nfc/NdefMessage;
    .param p2, "handoverData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;->handoverSelect:Landroid/nfc/NdefMessage;

    .line 108
    iput-object p2, p0, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;->handoverData:Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    .line 109
    return-void
.end method
