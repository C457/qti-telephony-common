.class public interface abstract Lcom/qti/izat/IIzatService;
.super Ljava/lang/Object;
.source "IIzatService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/izat/IIzatService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDebugReportService()Lcom/qti/debugreport/IDebugReportService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFlpService()Lcom/qti/flp/IFlpService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getGeofenceService()Lcom/qti/geofence/IGeofenceService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getGnssConfigService()Lcom/qti/gnssconfig/IGnssConfigService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getTestService()Lcom/qti/flp/ITestService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWWANDBProvider()Lcom/qti/wwandbprovider/IWWANDBProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWWANDBReceiver()Lcom/qti/wwandbreceiver/IWWANDBReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWiFiDBProvider()Lcom/qti/wifidbprovider/IWiFiDBProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWiFiDBReceiver()Lcom/qti/wifidbreceiver/IWiFiDBReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
