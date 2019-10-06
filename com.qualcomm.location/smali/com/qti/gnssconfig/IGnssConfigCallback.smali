.class public interface abstract Lcom/qti/gnssconfig/IGnssConfigCallback;
.super Ljava/lang/Object;
.source "IGnssConfigCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/gnssconfig/IGnssConfigCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract getGnssSvTypeConfigCb([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
