.class Lcom/qualcomm/location/izat/IzatService$1;
.super Lcom/qti/izat/IIzatService$Stub;
.source "IzatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/IzatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/izat/IzatService;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/IzatService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/izat/IzatService;

    .line 79
    iput-object p1, p0, Lcom/qualcomm/location/izat/IzatService$1;->this$0:Lcom/qualcomm/location/izat/IzatService;

    invoke-direct {p0}, Lcom/qti/izat/IIzatService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDebugReportService()Lcom/qti/debugreport/IDebugReportService;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/qualcomm/location/izat/IzatService$1;->this$0:Lcom/qualcomm/location/izat/IzatService;

    .line 117
    invoke-static {v0}, Lcom/qualcomm/location/izat/IzatService;->access$000(Lcom/qualcomm/location/izat/IzatService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->getInstance(Landroid/content/Context;)Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    move-result-object v0

    .line 118
    .local v0, "debugReportService":Lcom/qualcomm/location/izat/debugreport/DebugReportService;
    if-nez v0, :cond_0

    .line 119
    const/4 v1, 0x0

    return-object v1

    .line 121
    :cond_0
    invoke-virtual {v0}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->getDebugReportBinder()Lcom/qti/debugreport/IDebugReportService;

    move-result-object v1

    return-object v1
.end method

.method public getFlpService()Lcom/qti/flp/IFlpService;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/qualcomm/location/izat/IzatService$1;->this$0:Lcom/qualcomm/location/izat/IzatService;

    invoke-static {v0}, Lcom/qualcomm/location/izat/IzatService;->access$000(Lcom/qualcomm/location/izat/IzatService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/qualcomm/location/izat/IzatService$1;->this$0:Lcom/qualcomm/location/izat/IzatService;

    .line 86
    invoke-static {v0}, Lcom/qualcomm/location/izat/IzatService;->access$000(Lcom/qualcomm/location/izat/IzatService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->getInstance(Landroid/content/Context;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    move-result-object v0

    .line 87
    .local v0, "flpServiceProvider":Lcom/qualcomm/location/izat/flp/FlpServiceProvider;
    if-nez v0, :cond_0

    .line 88
    const/4 v1, 0x0

    return-object v1

    .line 90
    :cond_0
    invoke-virtual {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->getFlpBinder()Lcom/qti/flp/IFlpService;

    move-result-object v1

    return-object v1

    .line 83
    .end local v0    # "flpServiceProvider":Lcom/qualcomm/location/izat/flp/FlpServiceProvider;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGeofenceService()Lcom/qti/geofence/IGeofenceService;
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/qualcomm/location/izat/IzatService$1;->this$0:Lcom/qualcomm/location/izat/IzatService;

    invoke-static {v0}, Lcom/qualcomm/location/izat/IzatService;->access$000(Lcom/qualcomm/location/izat/IzatService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/qualcomm/location/izat/IzatService$1;->this$0:Lcom/qualcomm/location/izat/IzatService;

    .line 106
    invoke-static {v0}, Lcom/qualcomm/location/izat/IzatService;->access$000(Lcom/qualcomm/location/izat/IzatService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->getInstance(Landroid/content/Context;)Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    move-result-object v0

    .line 107
    .local v0, "geofenceServiceProvider":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;
    if-nez v0, :cond_0

    .line 108
    const/4 v1, 0x0

    return-object v1

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->getGeofenceBinder()Lcom/qti/geofence/IGeofenceService;

    move-result-object v1

    return-object v1

    .line 103
    .end local v0    # "geofenceServiceProvider":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGnssConfigService()Lcom/qti/gnssconfig/IGnssConfigService;
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/qualcomm/location/izat/IzatService$1;->this$0:Lcom/qualcomm/location/izat/IzatService;

    .line 141
    invoke-static {v0}, Lcom/qualcomm/location/izat/IzatService;->access$000(Lcom/qualcomm/location/izat/IzatService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->getInstance(Landroid/content/Context;)Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    move-result-object v0

    .line 142
    .local v0, "gnssConfigService":Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;
    if-nez v0, :cond_0

    .line 143
    const/4 v1, 0x0

    return-object v1

    .line 145
    :cond_0
    invoke-virtual {v0}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->getGnssConfigBinder()Lcom/qti/gnssconfig/IGnssConfigService;

    move-result-object v1

    return-object v1
.end method

.method public getTestService()Lcom/qti/flp/ITestService;
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/qualcomm/location/izat/IzatService$1;->this$0:Lcom/qualcomm/location/izat/IzatService;

    .line 94
    invoke-static {v0}, Lcom/qualcomm/location/izat/IzatService;->access$000(Lcom/qualcomm/location/izat/IzatService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->getInstance(Landroid/content/Context;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    move-result-object v0

    .line 95
    .local v0, "flpServiceProvider":Lcom/qualcomm/location/izat/flp/FlpServiceProvider;
    if-nez v0, :cond_0

    .line 96
    const/4 v1, 0x0

    return-object v1

    .line 98
    :cond_0
    invoke-virtual {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->getFlpTestingBinder()Lcom/qti/flp/ITestService;

    move-result-object v1

    return-object v1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 113
    const-string v0, "7.2.0"

    return-object v0
.end method

.method public getWWANDBProvider()Lcom/qti/wwandbprovider/IWWANDBProvider;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/qualcomm/location/izat/IzatService$1;->this$0:Lcom/qualcomm/location/izat/IzatService;

    invoke-static {v0}, Lcom/qualcomm/location/izat/IzatService;->access$000(Lcom/qualcomm/location/izat/IzatService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.qualcomm.permission.ACCESS_GTPWWAN_CROWDSOURCING_API"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/qualcomm/location/izat/IzatService$1;->this$0:Lcom/qualcomm/location/izat/IzatService;

    invoke-static {v0}, Lcom/qualcomm/location/izat/IzatService;->access$000(Lcom/qualcomm/location/izat/IzatService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->getInstance(Landroid/content/Context;)Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    move-result-object v0

    .line 161
    .local v0, "wwanDBProvider":Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;
    invoke-virtual {v0}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->getWWANDBProviderBinder()Lcom/qti/wwandbprovider/IWWANDBProvider;

    move-result-object v1

    return-object v1

    .line 158
    .end local v0    # "wwanDBProvider":Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires GTPWWAN_CROWDSOURCING_PERMISSION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWWANDBReceiver()Lcom/qti/wwandbreceiver/IWWANDBReceiver;
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/qualcomm/location/izat/IzatService$1;->this$0:Lcom/qualcomm/location/izat/IzatService;

    invoke-static {v0}, Lcom/qualcomm/location/izat/IzatService;->access$000(Lcom/qualcomm/location/izat/IzatService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.qualcomm.permission.ACCESS_GTPWWAN_API"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/qualcomm/location/izat/IzatService$1;->this$0:Lcom/qualcomm/location/izat/IzatService;

    invoke-static {v0}, Lcom/qualcomm/location/izat/IzatService;->access$000(Lcom/qualcomm/location/izat/IzatService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->getInstance(Landroid/content/Context;)Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    move-result-object v0

    .line 137
    .local v0, "wwanDBReceiver":Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;
    invoke-virtual {v0}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->getWWANDBReceiverBinder()Lcom/qti/wwandbreceiver/IWWANDBReceiver;

    move-result-object v1

    return-object v1

    .line 134
    .end local v0    # "wwanDBReceiver":Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_GTPWWAN_API permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWiFiDBProvider()Lcom/qti/wifidbprovider/IWiFiDBProvider;
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/qualcomm/location/izat/IzatService$1;->this$0:Lcom/qualcomm/location/izat/IzatService;

    invoke-static {v0}, Lcom/qualcomm/location/izat/IzatService;->access$000(Lcom/qualcomm/location/izat/IzatService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.qualcomm.permission.ACCESS_GTPWIFI_CROWDSOURCING_API"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/qualcomm/location/izat/IzatService$1;->this$0:Lcom/qualcomm/location/izat/IzatService;

    invoke-static {v0}, Lcom/qualcomm/location/izat/IzatService;->access$000(Lcom/qualcomm/location/izat/IzatService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->getInstance(Landroid/content/Context;)Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;

    move-result-object v0

    .line 153
    .local v0, "wifiDBProvider":Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;
    invoke-virtual {v0}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->getWiFiDBProviderBinder()Lcom/qti/wifidbprovider/IWiFiDBProvider;

    move-result-object v1

    return-object v1

    .line 150
    .end local v0    # "wifiDBProvider":Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_GTPWIFI_CROWDSOURCING_API permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWiFiDBReceiver()Lcom/qti/wifidbreceiver/IWiFiDBReceiver;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/qualcomm/location/izat/IzatService$1;->this$0:Lcom/qualcomm/location/izat/IzatService;

    invoke-static {v0}, Lcom/qualcomm/location/izat/IzatService;->access$000(Lcom/qualcomm/location/izat/IzatService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.qualcomm.permission.ACCESS_GTPWIFI_API"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/qualcomm/location/izat/IzatService$1;->this$0:Lcom/qualcomm/location/izat/IzatService;

    invoke-static {v0}, Lcom/qualcomm/location/izat/IzatService;->access$000(Lcom/qualcomm/location/izat/IzatService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->getInstance(Landroid/content/Context;)Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    move-result-object v0

    .line 129
    .local v0, "wifiDBReceiver":Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;
    invoke-virtual {v0}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->getWiFiDBReceiverBinder()Lcom/qti/wifidbreceiver/IWiFiDBReceiver;

    move-result-object v1

    return-object v1

    .line 126
    .end local v0    # "wifiDBReceiver":Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_GTPWIFI_API permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
