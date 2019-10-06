.class final Lcom/qualcomm/location/osagent/OsAgent$RilListener;
.super Landroid/telephony/PhoneStateListener;
.source "OsAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/osagent/OsAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RilListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/osagent/OsAgent;


# direct methods
.method private constructor <init>(Lcom/qualcomm/location/osagent/OsAgent;)V
    .locals 0

    .line 1693
    iput-object p1, p0, Lcom/qualcomm/location/osagent/OsAgent$RilListener;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/location/osagent/OsAgent;Lcom/qualcomm/location/osagent/OsAgent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;
    .param p2, "x1"    # Lcom/qualcomm/location/osagent/OsAgent$1;

    .line 1693
    invoke-direct {p0, p1}, Lcom/qualcomm/location/osagent/OsAgent$RilListener;-><init>(Lcom/qualcomm/location/osagent/OsAgent;)V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 2
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .line 1700
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump Cell Location:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->access$200(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1705
    goto :goto_0

    .line 1702
    :catch_0
    move-exception v0

    .line 1704
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "Null pointer for CellLocation"

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$200(Ljava/lang/String;)V

    .line 1707
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent$RilListener;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->access$1100(Lcom/qualcomm/location/osagent/OsAgent;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1708
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 1713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrentServiceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent$RilListener;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$2100(Lcom/qualcomm/location/osagent/OsAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " NewVoiceServiceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " NewDataServiceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1713
    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->access$200(Ljava/lang/String;)V

    .line 1718
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x6b

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1719
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1726
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent$RilListener;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v0, v3}, Lcom/qualcomm/location/osagent/OsAgent;->access$2202(Lcom/qualcomm/location/osagent/OsAgent;Z)Z

    .line 1727
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent$RilListener;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->access$1100(Lcom/qualcomm/location/osagent/OsAgent;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1728
    .local v0, "msgServiceStateChanged":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1729
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent$RilListener;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$1100(Lcom/qualcomm/location/osagent/OsAgent;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "msgServiceStateChanged":Landroid/os/Message;
    goto :goto_1

    .line 1720
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent$RilListener;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v0, v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$2202(Lcom/qualcomm/location/osagent/OsAgent;Z)Z

    .line 1721
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent$RilListener;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->access$1100(Lcom/qualcomm/location/osagent/OsAgent;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1722
    .restart local v0    # "msgServiceStateChanged":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 1723
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent$RilListener;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$1100(Lcom/qualcomm/location/osagent/OsAgent;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1724
    .end local v0    # "msgServiceStateChanged":Landroid/os/Message;
    nop

    .line 1731
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service State Changed isPhoneInServiceZte = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent$RilListener;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$2200(Lcom/qualcomm/location/osagent/OsAgent;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->access$200(Ljava/lang/String;)V

    .line 1732
    return-void
.end method
