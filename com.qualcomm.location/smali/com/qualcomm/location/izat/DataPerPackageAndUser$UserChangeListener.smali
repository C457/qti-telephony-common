.class public interface abstract Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener;
.super Ljava/lang/Object;
.source "DataPerPackageAndUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/DataPerPackageAndUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GenericData:",
        "Lcom/qualcomm/location/izat/CallbackData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onUserChange(Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TGenericData;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TGenericData;>;)V"
        }
    .end annotation
.end method
