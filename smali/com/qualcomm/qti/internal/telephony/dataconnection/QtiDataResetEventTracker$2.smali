.class Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;
.super Landroid/telephony/PhoneStateListener;
.source "QtiDataResetEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->startResetEventTracker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;
    .param p2, "x0"    # Ljava/lang/Integer;

    .line 91
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 3
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .line 93
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataConnection onCellLocationChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$100(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;Ljava/lang/String;)V

    .line 95
    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_2

    .line 96
    move-object v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 97
    .local v0, "currentLocation":Landroid/telephony/gsm/GsmCellLocation;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$300(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 99
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$300(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 100
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    .line 101
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$300(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 102
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    const-string v2, "DataConnection location updated"

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$100(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$200(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)V

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-static {v1, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$302(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;Landroid/telephony/gsm/GsmCellLocation;)Landroid/telephony/gsm/GsmCellLocation;

    .line 109
    .end local v0    # "currentLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_2
    return-void
.end method
