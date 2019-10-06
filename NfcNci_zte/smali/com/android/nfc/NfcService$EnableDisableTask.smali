.class Lcom/android/nfc/NfcService$EnableDisableTask;
.super Landroid/os/AsyncTask;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnableDisableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 1515
    iput-object p1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method checkSecureElementConfuration()V
    .locals 11

    .line 1660
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()[I

    move-result-object v0

    .line 1661
    .local v0, "seList":[I
    const/4 v1, 0x0

    .line 1662
    .local v1, "uiccSlot":I
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "current_selected_uicc_id"

    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1400(Lcom/android/nfc/NfcService;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1663
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/nfc/DeviceHost;->setPreferredSimSlot(I)I

    move-result v2

    .line 1665
    .local v2, "status":I
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost;->GetDefaultSE()I

    move-result v3

    .line 1666
    .local v3, "seNum":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 1668
    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6, v5}, Lcom/android/nfc/NfcService;->access$1502(Lcom/android/nfc/NfcService;Z)Z

    .line 1669
    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6, v3}, Lcom/android/nfc/NfcService;->access$1602(Lcom/android/nfc/NfcService;I)I

    goto :goto_1

    .line 1671
    :cond_0
    if-eqz v0, :cond_1

    .line 1672
    move v6, v4

    .local v6, "i":I
    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_1

    .line 1673
    iget-object v7, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v7

    aget v8, v0, v6

    invoke-interface {v7, v8}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 1672
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1678
    .end local v6    # "i":I
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    .line 1679
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "secure_element_on"

    iget-object v9, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Z

    move-result v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1678
    invoke-static {v6, v7}, Lcom/android/nfc/NfcService;->access$1702(Lcom/android/nfc/NfcService;Z)Z

    .line 1681
    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$1700(Lcom/android/nfc/NfcService;)Z

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eqz v6, :cond_c

    .line 1682
    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    .line 1683
    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v9, "secure_element_id"

    iget-object v10, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v10}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)I

    move-result v10

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1685
    .local v6, "secureElementId":I
    if-eqz v0, :cond_b

    .line 1686
    invoke-static {}, Lcom/android/nfc/NfcService;->access$1900()I

    move-result v9

    if-eq v6, v9, :cond_9

    .line 1687
    iget-object v9, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v9

    invoke-interface {v9, v8}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 1688
    iget-object v9, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v9

    invoke-interface {v9, v7}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 1689
    iget-object v9, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v9

    invoke-interface {v9, v5}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 1691
    nop

    .local v4, "i":I
    :goto_2
    array-length v9, v0

    if-ge v4, v9, :cond_b

    .line 1693
    aget v9, v0, v4

    if-ne v9, v6, :cond_8

    .line 1694
    if-ne v6, v5, :cond_3

    .line 1695
    array-length v7, v0

    if-le v7, v5, :cond_2

    .line 1697
    const-string v5, "NfcService"

    const-string v7, "Deselect UICC"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    :cond_2
    const-string v5, "NfcService"

    const-string v7, "Select SMX"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(I)V

    .line 1702
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5, v6}, Lcom/android/nfc/NfcService;->access$202(Lcom/android/nfc/NfcService;I)I

    .line 1703
    goto/16 :goto_5

    .line 1704
    :cond_3
    if-ne v6, v8, :cond_5

    .line 1705
    array-length v7, v0

    if-le v7, v5, :cond_4

    .line 1707
    const-string v5, "NfcService"

    const-string v7, "Deselect SMX"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :cond_4
    const-string v5, "NfcService"

    const-string v7, "Select UICC"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(I)V

    .line 1712
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5, v6}, Lcom/android/nfc/NfcService;->access$202(Lcom/android/nfc/NfcService;I)I

    .line 1713
    goto :goto_5

    .line 1714
    :cond_5
    if-ne v6, v7, :cond_7

    .line 1715
    array-length v7, v0

    if-le v7, v5, :cond_6

    .line 1717
    const-string v5, "NfcService"

    const-string v7, "Deselect SMX"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :cond_6
    const-string v5, "NfcService"

    const-string v7, "Select UICC2"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(I)V

    .line 1722
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5, v6}, Lcom/android/nfc/NfcService;->access$202(Lcom/android/nfc/NfcService;I)I

    .line 1723
    goto :goto_5

    .line 1724
    :cond_7
    iget-object v9, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)I

    move-result v9

    if-ne v6, v9, :cond_8

    .line 1725
    array-length v9, v0

    if-le v9, v5, :cond_8

    .line 1727
    const-string v9, "NfcService"

    const-string v10, "UICC deselected by default"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 1735
    .end local v4    # "i":I
    :cond_9
    const-string v7, "NfcService"

    const-string v8, "Select ALL_SE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    array-length v7, v0

    if-le v7, v5, :cond_b

    .line 1740
    nop

    .restart local v4    # "i":I
    :goto_3
    array-length v5, v0

    if-ge v4, v5, :cond_a

    .line 1741
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    aget v7, v0, v4

    invoke-interface {v5, v7}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(I)V

    .line 1744
    const-wide/16 v7, 0xc8

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1747
    goto :goto_4

    .line 1745
    :catch_0
    move-exception v5

    .line 1746
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1740
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1749
    .end local v4    # "i":I
    :cond_a
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4, v6}, Lcom/android/nfc/NfcService;->access$202(Lcom/android/nfc/NfcService;I)I

    .line 1753
    .end local v6    # "secureElementId":I
    :cond_b
    :goto_5
    goto :goto_6

    .line 1754
    :cond_c
    if-eqz v0, :cond_d

    array-length v4, v0

    if-lez v4, :cond_d

    .line 1756
    const-string v4, "NfcService"

    const-string v6, "UICC/eSE deselected by default"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    invoke-interface {v4, v8}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 1759
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 1760
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 1763
    :cond_d
    :goto_6
    return-void
.end method

.method disableInternal()Z
    .locals 7

    .line 1914
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1915
    return v1

    .line 1917
    :cond_0
    const-string v0, "NfcService"

    const-string v2, "Disabling NFC"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 1921
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mWiredSeClass:Ljava/lang/Class;

    const-string v4, "wiredSeDeInitialize"

    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Lcom/android/nfc/NfcService;->mWiredSeDeInitMwthod:Ljava/lang/reflect/Method;

    .line 1922
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mWiredSeDeInitMwthod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mWiredSeObj:Ljava/lang/Object;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1927
    :catch_0
    move-exception v2

    .line 1928
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "NfcService"

    const-string v4, "caught Exception during wiredSeInitialize"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 1925
    :catch_1
    move-exception v2

    .line 1926
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "NfcService"

    const-string v4, "Error in invoking wiredSeInitialize invocation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1923
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 1924
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "NfcService"

    const-string v4, "No such Method WiredSeInitialize"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 1939
    :goto_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    new-instance v3, Lcom/android/nfc/NfcService$WatchDogThread;

    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const-string v5, "disableInternal"

    const/16 v6, 0x2710

    invoke-direct {v3, v4, v5, v6}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    invoke-static {v2, v3}, Lcom/android/nfc/NfcService;->access$2902(Lcom/android/nfc/NfcService;Lcom/android/nfc/NfcService$WatchDogThread;)Lcom/android/nfc/NfcService$WatchDogThread;

    .line 1940
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$WatchDogThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 1942
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v2, v2, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v2, :cond_1

    .line 1943
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcDisabled()V

    .line 1946
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v2, v0, v0}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 1954
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1956
    .local v0, "startTime":Ljava/lang/Long;
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 1957
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$3000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1958
    monitor-exit v2

    goto :goto_3

    .line 1959
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1961
    const-wide/16 v2, 0x64

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1964
    goto :goto_2

    .line 1962
    :catch_3
    move-exception v2

    .line 1965
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 1967
    :goto_3
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 1968
    :try_start_3
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$3000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_4

    .line 1970
    :try_start_4
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$3000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v5

    iget-object v5, v5, Lcom/android/nfc/NfcService$OpenSecureElement;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v5}, Lcom/android/nfc/NfcService;->_nfcEeClose(ILandroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1971
    goto :goto_4

    :catch_4
    move-exception v3

    .line 1973
    :cond_4
    :goto_4
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1979
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->maybeDisconnectTarget()V

    .line 1981
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$3100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3}, Lcom/android/nfc/NfcDispatcher;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 1983
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->deinitialize()Z

    move-result v3

    .line 1984
    .local v3, "result":Z
    const-string v2, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDeviceHost.deinitialize() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$WatchDogThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 1988
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v4

    .line 1989
    :try_start_6
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->getNfcOffParameters()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v5

    iput-object v5, v2, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 1990
    invoke-virtual {p0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 1991
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$900(Lcom/android/nfc/NfcService;)I

    move-result v2

    iput v2, v1, Lcom/android/nfc/NfcService;->mNxpNfcState:I

    .line 1992
    monitor-exit v4

    .line 1993
    return v3

    .line 1992
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 1973
    .end local v3    # "result":Z
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 1959
    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1515
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService$EnableDisableTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Integer;

    .line 1522
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    .line 1537
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1539
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_9

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 1576
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "first_boot"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1577
    const-string v0, "NfcService"

    const-string v4, "First Boot"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "first_boot"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1579
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1580
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->factoryReset()V

    .line 1582
    :cond_0
    const-string v0, "NfcService"

    const-string v4, "checking on firmware download"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "nfc_on"

    sget-boolean v5, Lcom/android/nfc/NfcService;->mNfcDefaultValueBoolean:Z

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1584
    const-string v0, "NfcService"

    const-string v4, "NFC is on. Doing normal stuff"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    invoke-static {}, Lcom/android/nfc/NfcService;->isDualSystem()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1587
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v1, v0, Lcom/android/nfc/NfcService;->mIsTaskBoot:Z

    .line 1588
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z

    .line 1589
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v3, v0, Lcom/android/nfc/NfcService;->mIsTaskBoot:Z

    goto :goto_1

    .line 1592
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->containerService:Landroid/os/IContainerService;

    invoke-interface {v0}, Landroid/os/IContainerService;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1593
    const-string v0, "NfcService"

    const-string v4, "auto enable NFC"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v1, v0, Lcom/android/nfc/NfcService;->mIsTaskBoot:Z

    .line 1595
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z

    .line 1596
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v3, v0, Lcom/android/nfc/NfcService;->mIsTaskBoot:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1598
    :catch_0
    move-exception v0

    .line 1599
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1600
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    goto :goto_1

    .line 1604
    :cond_3
    const-string v0, "NfcService"

    const-string v1, "NFC is off.  Checking firmware version"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    invoke-static {}, Lcom/android/nfc/NfcService;->isDualSystem()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1607
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->checkFirmware()V

    goto :goto_1

    .line 1612
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->containerService:Landroid/os/IContainerService;

    invoke-interface {v0}, Landroid/os/IContainerService;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1613
    const-string v0, "NfcService"

    const-string v1, "checkFirmware NFC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->checkFirmware()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1618
    :cond_5
    goto :goto_1

    .line 1616
    :catch_1
    move-exception v0

    .line 1617
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1622
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const-string v0, "nfc.initialized"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    goto/16 :goto_3

    .line 1562
    :pswitch_1
    invoke-static {}, Lcom/android/nfc/NfcService;->isDualSystem()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1563
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->disableInternal()Z

    goto/16 :goto_3

    .line 1565
    :cond_6
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->disableInternal()Z

    move-result v0

    .line 1566
    .local v0, "ret":Z
    invoke-static {}, Lcom/android/nfc/NfcService;->access$800()[B

    move-result-object v4

    monitor-enter v4

    .line 1567
    :try_start_2
    const-string v1, "NfcService"

    const-string v5, "disableInternal notifyAll before"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    invoke-static {}, Lcom/android/nfc/NfcService;->access$800()[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1569
    const-string v1, "NfcService"

    const-string v5, "disableInternal notifyAll after"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1571
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v3, v1, Lcom/android/nfc/NfcService;->mAutoDisable:Z

    .line 1574
    goto :goto_3

    .line 1570
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1542
    .end local v0    # "ret":Z
    :pswitch_2
    invoke-static {}, Lcom/android/nfc/NfcService;->isDualSystem()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1543
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z

    goto :goto_2

    .line 1545
    :cond_7
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z

    move-result v0

    .line 1546
    .restart local v0    # "ret":Z
    invoke-static {}, Lcom/android/nfc/NfcService;->access$800()[B

    move-result-object v4

    monitor-enter v4

    .line 1547
    :try_start_4
    const-string v5, "NfcService"

    const-string v6, "enableInternal notifyAll before"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    invoke-static {}, Lcom/android/nfc/NfcService;->access$800()[B

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 1549
    const-string v5, "NfcService"

    const-string v6, "enableInternal notifyAll after"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1551
    if-eqz v0, :cond_8

    .line 1552
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v3, v1, Lcom/android/nfc/NfcService;->mAutoEnable:Z

    goto :goto_2

    .line 1554
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 1557
    .end local v0    # "ret":Z
    :goto_2
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable finished, state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v3, v3, Lcom/android/nfc/NfcService;->mState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    goto :goto_3

    .line 1550
    .restart local v0    # "ret":Z
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 1625
    .end local v0    # "ret":Z
    :cond_9
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->restartInternal()Z

    .line 1630
    :goto_3
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1631
    return-object v2

    .line 1525
    :cond_a
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing EnableDisable task "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from bad state "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v3, v3, Lcom/android/nfc/NfcService;->mState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method enableInternal()Z
    .locals 9

    .line 1820
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1821
    return v2

    .line 1823
    :cond_0
    const-string v0, "NfcService"

    const-string v3, "Enabling NFC"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 1825
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getNfcInitTimeout()I

    move-result v0

    .line 1826
    .local v0, "timeout":I
    const v3, 0x15f90

    if-ge v0, v3, :cond_1

    .line 1828
    const v0, 0x15f90

    .line 1830
    :cond_1
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enabling NFC timeout"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    new-instance v3, Lcom/android/nfc/NfcService$WatchDogThread;

    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const-string v5, "enableInternal"

    invoke-direct {v3, v4, v5, v0}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 1832
    .local v3, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    invoke-virtual {v3}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 1834
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$2400(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1836
    :try_start_1
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost;->initialize()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 1837
    const-string v1, "NfcService"

    const-string v4, "Error enabling NFC"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    invoke-virtual {p0, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 1839
    invoke-virtual {v3}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1840
    nop

    .line 1843
    :try_start_2
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2400(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1846
    invoke-virtual {v3}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 1840
    return v5

    .line 1843
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$2400(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1844
    nop

    .line 1846
    invoke-virtual {v3}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 1847
    nop

    .line 1848
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost;->getChipVer()I

    move-result v6

    iput v6, v4, Lcom/android/nfc/NfcService;->mChipVer:I

    .line 1849
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mChipVer:I

    const/4 v6, 0x7

    if-ge v4, v6, :cond_3

    .line 1850
    const/4 v4, -0x5

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1972(I)I

    .line 1852
    :cond_3
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->checkSecureElementConfuration()V

    .line 1854
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v2, v4, Lcom/android/nfc/NfcService;->mIsRouteForced:Z

    .line 1855
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v4, :cond_4

    .line 1857
    sput-boolean v5, Lcom/android/nfc/NfcService;->sAidTableFull:Z

    .line 1858
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcEnabled()V

    .line 1860
    :cond_4
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v5, v4, Lcom/android/nfc/NfcService;->mIsRouteForced:Z

    .line 1861
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->getNciVersion()I

    move-result v4

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$2602(I)I

    .line 1863
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v4

    .line 1864
    :try_start_4
    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1865
    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v7, v7, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v6, v7, v2}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 1866
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1868
    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v6

    .line 1869
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1871
    :try_start_6
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mWiredSeClass:Ljava/lang/Class;

    const-string v7, "wiredSeInitialize"

    new-array v8, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v1, Lcom/android/nfc/NfcService;->mWiredSeInitMethod:Ljava/lang/reflect/Method;

    .line 1872
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mWiredSeInitMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mWiredSeObj:Ljava/lang/Object;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 1877
    :catch_0
    move-exception v1

    .line 1878
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v4, "NfcService"

    const-string v7, "caught Exception during wiredSeInitialize"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 1875
    :catch_1
    move-exception v1

    .line 1876
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v4, "NfcService"

    const-string v7, "Error in invoking wiredSeInitialize invocation"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1873
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1874
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v4, "NfcService"

    const-string v7, "No such Method WiredSeInitialize"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 1881
    :goto_1
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1883
    const-string v1, "NfcService"

    const-string v4, "applyRouting -3"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$2700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v4

    iput v4, v1, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 1885
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1886
    const/16 v1, 0x10

    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mScreenState:I

    or-int/2addr v1, v4

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 1888
    .local v1, "screen_state_mask":I
    :goto_2
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$2800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1889
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1891
    :cond_6
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/nfc/DeviceHost;->doSetScreenOrPowerState(I)V

    .line 1892
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v2, v4, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 1893
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mScreenState:I

    const/16 v6, 0x8

    if-ge v4, v6, :cond_7

    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mIsTaskBoot:Z

    if-eqz v4, :cond_7

    .line 1899
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1900
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v5, v4, Lcom/android/nfc/NfcService;->mIsTaskBoot:Z

    .line 1902
    :cond_7
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1903
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v4

    .line 1904
    :try_start_8
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)I

    move-result v6

    iput v6, v5, Lcom/android/nfc/NfcService;->mNxpNfcState:I

    .line 1905
    monitor-exit v4

    .line 1906
    return v2

    .line 1905
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2

    .line 1881
    .end local v1    # "screen_state_mask":I
    :catchall_1
    move-exception v1

    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v1

    .line 1866
    :catchall_2
    move-exception v1

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v1

    .line 1843
    :catchall_3
    move-exception v1

    :try_start_b
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2400(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1846
    :catchall_4
    move-exception v1

    invoke-virtual {v3}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    throw v1
.end method

.method getJcopOsFileInfo()Z
    .locals 11

    .line 1767
    const-string v0, "NfcService"

    const-string v1, "getJcopOsFileInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    const/4 v0, 0x0

    move v1, v0

    .local v1, "num":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 1771
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/android/nfc/NfcService;->access$2000()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1775
    .local v2, "jcopOsFile":Ljava/io/File;
    nop

    .line 1774
    nop

    .line 1776
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 1777
    .local v3, "modtime":J
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v6, "NfcServicePrefs"

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1778
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/nfc/NfcService;->access$2100()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-static {}, Lcom/android/nfc/NfcService;->access$2200()[J

    move-result-object v7

    aget-wide v7, v7, v1

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1779
    .local v6, "prev_modtime":J
    const-string v8, "NfcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prev_modtime:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const-string v8, "NfcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new_modtime:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    cmp-long v8, v6, v3

    if-nez v8, :cond_0

    .line 1782
    return v0

    .line 1784
    :cond_0
    invoke-static {}, Lcom/android/nfc/NfcService;->access$2300()[J

    move-result-object v8

    aput-wide v3, v8, v1

    .line 1769
    .end local v3    # "modtime":J
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v6    # "prev_modtime":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1772
    .end local v2    # "jcopOsFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 1773
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "NfcService"

    const-string v4, "path to jcop os file was null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    return v0

    .line 1786
    .end local v1    # "num":I
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method jcopOsDownload()V
    .locals 11

    .line 1791
    const/4 v0, 0x0

    .line 1793
    .local v0, "status":I
    const-string v1, "NfcService"

    const-string v2, "Jcop Download starts"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v2, "NfcServicePrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1796
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->getJcopOsFileInfo()Z

    move-result v2

    .line 1798
    .local v2, "jcopStatus":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 1799
    const-string v5, "NfcService"

    const-string v6, "Starting getChipName"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost;->getChipVer()I

    move-result v5

    .line 1801
    .local v5, "Ver":I
    const/16 v6, 0x8

    const/4 v7, 0x2

    if-eq v5, v6, :cond_0

    const/4 v6, 0x6

    if-eq v5, v6, :cond_0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    if-ne v5, v7, :cond_1

    .line 1802
    :cond_0
    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost;->JCOSDownload()I

    move-result v0

    .line 1804
    :cond_1
    if-eqz v0, :cond_2

    .line 1805
    const-string v3, "NfcService"

    const-string v4, "Jcop Download failed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1808
    :cond_2
    const-string v6, "NfcService"

    const-string v8, "Jcop Download success"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-static {}, Lcom/android/nfc/NfcService;->access$2100()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-static {}, Lcom/android/nfc/NfcService;->access$2300()[J

    move-result-object v9

    aget-wide v9, v9, v3

    invoke-interface {v6, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1810
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {}, Lcom/android/nfc/NfcService;->access$2100()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-static {}, Lcom/android/nfc/NfcService;->access$2300()[J

    move-result-object v8

    aget-wide v8, v8, v4

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1811
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {}, Lcom/android/nfc/NfcService;->access$2100()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-static {}, Lcom/android/nfc/NfcService;->access$2300()[J

    move-result-object v6

    aget-wide v6, v6, v7

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1814
    .end local v5    # "Ver":I
    :cond_3
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1515
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService$EnableDisableTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Void;

    .line 1637
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1638
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1639
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1640
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1641
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1642
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1643
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1644
    .end local v0    # "filter":Landroid/content/IntentFilter;
    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1645
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1646
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1647
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1648
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1652
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    :goto_0
    return-void
.end method

.method restartInternal()Z
    .locals 4

    .line 1999
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->disableInternal()Z

    move-result v0

    .line 2000
    .local v0, "result":Z
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableInternal status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2005
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableInternal is success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    nop

    .line 2009
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z

    move-result v1

    .line 2010
    .end local v0    # "result":Z
    .local v1, "result":Z
    const-string v0, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableInternal status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 2015
    const-string v0, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableInternal is success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    nop

    .line 2019
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2020
    .local v0, "flashIntent":Landroid/content/Intent;
    const-string v2, "com.android.nfc_extras.action.ACTION_FLASH_SUCCESS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2021
    const-string v2, "NfcService"

    const-string v3, "Broadcasting com.android.nfc_extras.action.ACTION_FLASH_SUCCESS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2023
    return v1
.end method

.method updateState(I)V
    .locals 4
    .param p1, "newState"    # I

    .line 2027
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 2028
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mState:I

    if-ne p1, v1, :cond_0

    .line 2029
    monitor-exit v0

    return-void

    .line 2031
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput p1, v1, Lcom/android/nfc/NfcService;->mState:I

    .line 2032
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2033
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2034
    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v3, v3, Lcom/android/nfc/NfcService;->mState:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2035
    invoke-static {}, Lcom/android/nfc/NfcService;->access$300()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2036
    const-string v2, "NfcService"

    const-string v3, "updateState ACTION_ADAPTER_STATE_CHANGED  sendBroadcast!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 2038
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 2039
    const-string v2, "NfcService"

    const-string v3, "updateState ACTION_ADAPTER_STATE_CHANGED don\'t sendBroadcast,but set flag to sendBroadcast!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$302(Z)Z

    goto :goto_0

    .line 2042
    :cond_2
    const-string v2, "NfcService"

    const-string v3, "updateState ACTION_ADAPTER_STATE_CHANGED don\'t sendBroadcast!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    monitor-exit v0

    .line 2045
    return-void

    .line 2044
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
