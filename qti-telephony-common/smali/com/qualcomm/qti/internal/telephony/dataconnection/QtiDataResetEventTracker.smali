.class public Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;
.super Ljava/lang/Object;
.source "QtiDataResetEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDc:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

.field private mPreviousRAT:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dc"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;
    .param p3, "listener"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 40
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

    .line 41
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 42
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mContext:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 44
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mListener:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPreviousRAT:I

    .line 46
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$1;-><init>(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mHandler:Landroid/os/Handler;

    .line 68
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mDc:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiDataResetEventTracker constructor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->log(Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 71
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mContext:Landroid/content/Context;

    .line 72
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mListener:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;

    .line 73
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    .line 33
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPreviousRAT:I

    return v0
.end method

.method static synthetic access$002(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;
    .param p1, "x1"    # I

    .line 33
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPreviousRAT:I

    return p1
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    .line 33
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->notifyResetEvent()V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)Landroid/telephony/gsm/GsmCellLocation;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    .line 33
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

    return-object v0
.end method

.method static synthetic access$302(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;Landroid/telephony/gsm/GsmCellLocation;)Landroid/telephony/gsm/GsmCellLocation;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;
    .param p1, "x1"    # Landroid/telephony/gsm/GsmCellLocation;

    .line 33
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

    return-object p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mDc:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[DRET]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method private notifyResetEvent()V
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->stopResetEventTracker()V

    .line 144
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mListener:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mListener:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;->onResetEvent()V

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 135
    const-string v0, "dispose"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->log(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->stopResetEventTracker()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 138
    return-void
.end method

.method public startResetEventTracker()V
    .locals 5

    .line 80
    const-string v0, "startResetEventTracker"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->log(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->stopResetEventTracker()V

    .line 82
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mHandler:Landroid/os/Handler;

    const v2, 0x42029

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 85
    .local v0, "currentCellLocation":Landroid/telephony/CellLocation;
    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataConnection mPreviousLocation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->log(Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 90
    .local v1, "subId":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v2, :cond_1

    .line 91
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;-><init>(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;Ljava/lang/Integer;)V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 114
    return-void
.end method

.method public stopResetEventTracker()V
    .locals 3

    .line 119
    const-string v0, "stopResetTimer"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->log(Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPreviousRAT:I

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

    .line 123
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mHandler:Landroid/os/Handler;

    .line 128
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->log(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
