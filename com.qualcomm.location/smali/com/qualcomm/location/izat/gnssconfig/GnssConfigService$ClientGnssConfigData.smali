.class Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;
.super Lcom/qualcomm/location/izat/CallbackData;
.source "GnssConfigService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientGnssConfigData"
.end annotation


# instance fields
.field private mCallback:Lcom/qti/gnssconfig/IGnssConfigCallback;

.field final synthetic this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;


# direct methods
.method public constructor <init>(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;Lcom/qti/gnssconfig/IGnssConfigCallback;)V
    .locals 0
    .param p2, "callback"    # Lcom/qti/gnssconfig/IGnssConfigCallback;

    .line 37
    iput-object p1, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;->this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    invoke-direct {p0}, Lcom/qualcomm/location/izat/CallbackData;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;->mCallback:Lcom/qti/gnssconfig/IGnssConfigCallback;

    .line 39
    iput-object p2, p0, Lcom/qualcomm/location/izat/CallbackData;->mCallback:Landroid/os/IInterface;

    .line 40
    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;)Lcom/qti/gnssconfig/IGnssConfigCallback;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;

    .line 34
    iget-object v0, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;->mCallback:Lcom/qti/gnssconfig/IGnssConfigCallback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;Lcom/qti/gnssconfig/IGnssConfigCallback;)Lcom/qti/gnssconfig/IGnssConfigCallback;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;
    .param p1, "x1"    # Lcom/qti/gnssconfig/IGnssConfigCallback;

    .line 34
    iput-object p1, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;->mCallback:Lcom/qti/gnssconfig/IGnssConfigCallback;

    return-object p1
.end method
